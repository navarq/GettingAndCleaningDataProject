# insures that the data table package is loaded
install.packages("data.table")

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

# loads the data.table
library(data.table)

# function to read either the test directory or the train directory

readSet <- function(directory, x_labels){
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the data set files
        
        ## 'x_labels' is a character vector of length 1 indicating
        ## the names of the x test
        
        old.dir <- getwd()
        setwd(directory)
        
        # check if the subject file exists
        subjectFileName <- paste0("subject", "_", directory, ".txt")
        if(!file.exists(subjectFileName)){
                message("no subject file found!")
        }
        
        # check if the X file exists
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
        # read in the X_ file with the colnames as the features
        # read in the Y_ file with the colnames activity
        result <- data.table(
                        cbind(read.table(subjectFileName, col.names=c("subjectid")), 
                                read.table(xFileName, col.names=x_labels), 
                                read.table(yFileName, col.names="activityid"))
        )
        
        # go into the the inertial signals dir
        setwd("Inertial Signals")
        
        # get all the file names in inertial signals
        inertialSignals <- list.files()
        
        # column bind the rest of the data
        for(signalFile in inertialSignals){
                
                # Remove filename and suffix of test or train
                signalName <- gsub(paste0(directory,".txt"),"", signalFile)
                
                result <- cbind(result, 
                                read.table(signalFile, col.names=createVariableNames(signalName, 128)))
        }
        
        # reset directory
        setwd(old.dir)
        
        result
}

run_analysis <- function(){
        
        # check if the test and train directories exist
        
        listdirs <- list.dirs()
        
        if(!("./test" %in% listdirs) && !("./train" %in% listdirs)) {
                message("test or train directories not found!")
        }
        
        # hold old variable of directory location
        
        old.dir <- getwd()
        
        # Get the descriptive names of the activities
        
        activity_labels <- read.table("activity_labels.txt")
        
        # first get the names of features 
        
        features <- read.table("features.txt")
        
        # substitute out the commas 
        x_labels <- sub("\\,","",features[,2])
        
        # remove the upper case values
        x_labels <- tolower(x_labels)
        
        # remove the hyphens next "-" 
        x_labels <- gsub("-","", x_labels)
        # remove curly open bracket
        x_labels <- gsub("\\(","", x_labels)
        # remove curly close bracket
        x_labels <- gsub("\\)","", x_labels)
        
        test <- readSet("test", x_labels)
        train <- readSet("train", x_labels)
}