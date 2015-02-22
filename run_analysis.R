
# loads the data.table and dplyr 
require(data.table)
require(dplyr)
require(reshape2)
# create a vector of names

createVariableNames <- function(name, len){
        ## name is a character vector of length 1 with the variable
        ## prefix
        
        ## len is the number of variable names to create
        
        result <-  character(0)
        
        for(n in 1:len){
                result <- rbind(result,paste0(name,n))
        }
        
        # numerical vector with the names of variables
        result
}


# function to read either the test directory or the train directory

readSet <- function(directory, x_labels){
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the data set files
        
        ## 'x_labels' is a character vector of length 1 indicating
        ## the names of the x test
        
        ## lengthOfSequence is a numeric vector of length 1
        ## that helps figure out a unique row index 
        
        old.dir <- getwd()
        setwd(directory)
        
        # check if the subject file exists
        subjectFileName <- paste0("subject", "_", directory, ".txt")
        if(!file.exists(subjectFileName)){
                message("no subject file found!")
        }
        
        #  if the X file exists
        xFileName <- paste0("X", "_", directory, ".txt")
        if(!file.exists(xFileName)){
                message("no subject file found!")
        }
        
        # check if the Y file exists
        yFileName <- paste0("y", "_", directory, ".txt")
        if(!file.exists(yFileName)){
                message("no subject file found!")
        }
        
        # read the first vector Subject_
        result <- cbind(fread(subjectFileName))
        # rename the only column tota 
        setnames(result,"V1","subjectid")
            
        #index <- as.character(seq(startAt,nrow(result)))
        #result[,':='(rowid, index)]
        
        # set this index as the key
        #setkey(result, rowid)
        
        # read in the Y_ file with the column name activityid
        result[, activityid:=fread(yFileName)]
        
        # read in the X_ file with the colnames as the features
        # unfortunately an issue with fread and double spaces
        # prevents is use here
        result <- cbind(result,as.data.table(read.table(xFileName, col.names=x_labels)))        
        
        # go into the the inertial signals dir
        setwd("Inertial Signals")
        
        # get all the file names in inertial signals
        inertialSignals <- list.files()
        
        # column bind the rest of the data
        for(signalFile in inertialSignals){
                
                # Remove filename and suffix of test or train
                signalName <- gsub(paste0(directory,".txt"),"", signalFile)
                
                result <- cbind(result, 
                                as.data.table(read.table(signalFile, col.names=createVariableNames(signalName, 128))))
        }
        
        # reset directory
        setwd(old.dir)
        
        result
}

run_analysis <- function(){
        
        # hold old variable of directory location
        old.dir <- getwd()
        
        # create a new folder called data
        if(!file.exists("data")){
                dir.create("data")
        }
        
        # do not download file and extract if it exists
        if(!file.exists("./data/getdata.zip")){
                # download the file
                download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", 
                              destfile="getdata.zip")
                
                # Keep track of the date downloaded
                dateDownloaded <- date()
                
                print(dateDownloaded)
        }
        # extract the file to the data folder
        unzip("getdata.zip", exdir = "data", overwrite=TRUE)
        # move to the data directory
        setwd("./data/UCI HAR Dataset")

        # check if the test and train directories exist
        listdirs <- list.dirs()
        
        if(!("./test" %in% listdirs) && !("./train" %in% listdirs)) {
                message("test or train directories not found!")
        }
        
        # Get the descriptive names of the activities
        # , change them to lower
        
        activity_labels <- fread("activity_labels.txt") 
        activity_labels$V2 <- tolower(gsub("_","", activity_labels$V2))
        
        # get the names of features 
        
        features <- fread("features.txt")
        
        # substitute out the commas 
        x_labels <- sub("\\,","",features$V2)
        
        # remove the upper case values
        x_labels <- tolower(x_labels)
        
        # remove the hyphens next "-" 
        x_labels <- gsub("-","", x_labels)
        # remove curly open bracket
        x_labels <- gsub("\\(","", x_labels)
        # remove curly close bracket
        x_labels <- gsub("\\)","", x_labels)
        
        # match only columns with mean and std in the name
        meanStdColumns<-grep("[m][e][a][n]|[s][t][d]", x_labels)
        
        # Read files as flat tables
        
        test <- readSet("test", x_labels)
        
        train <- readSet("train", x_labels)
        
        # reset to original folder
        setwd(old.dir)
        
        # Merge the data frames Step 1
        joinData <- rbind(test, train)
        
        # Step 2 extract only the measurements for mean and 
        # standard deviation
        
        meanStdColumns <- meanStdColumns + 2
        
        selectColumns <- c(1,2,meanStdColumns)
        
        # the new dataset, 88 columns, 10299 observations
        
        narrow <- select(joinData,selectColumns)
        write.table(narrow,"merged.txt",row.names=FALSE)
                 
        result<-aggregate(narrow, by=list(activityid=narrow$activityid,subjectid=narrow$subjectid), FUN=mean)
        #remove additional columns
        result[,4] <- NULL
        result[,3] <- NULL
        
        
        # change activityid into a factor
        result$activityid <- factor(result$activityid)
        # change subjectid into a factor
        result$subjectid <- factor(result$subjectid)
        
        # Apply activity labels, Step 3
        result$activity <- factor(result$activityid, 
                                  levels=activity_labels$V1,
                                  labels=activity_labels$V2)
        
        # output the tidy data table
        write.table(result, "tidy.txt", row.names=FALSE)
        # delete the directories and files
        unlink("./data",recursive = TRUE, force=TRUE)
        
        0
}