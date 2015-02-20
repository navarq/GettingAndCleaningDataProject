# create a vector of names

createVariableNames <- function(name, len){
        ## name is a character vector of length 1 with the variable
        ## prefix
        
        ## len is the number of variable names to create
        
        result <-  character(0)
        
        for(n in 1:len){
                result <- rbind(result,paste(name,n,sep=""))
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
        
        old.dir <- getwd()
        setwd(directory)
        
        # check if the subject file exists
        subjectFileName <- paste("subject", "_", directory, ".txt", sep="")
        if(!file.exists(subjectFileName)){
                message("no subject file found!")
        }
        
        # check if the X file exists
        xFileName <- paste("X", "_", directory, ".txt", sep="")
        if(!file.exists(xFileName)){
                message("no subject file found!")
        }
        
        # check if the Y file exists
        yFileName <- paste("y", "_", directory, ".txt", sep="")
        if(!file.exists(yFileName)){
                message("no subject file found!")
        }
        
        # read the first vector Subject_
        # read in the X_ file with the colnames as the features
        # read in the Y_ file with the colnames activity
        result <- cbind(read.table(subjectFileName, col.names=c("subjectId")), 
                        read.table(xFileName, col.names=x_labels), 
                        read.table(yFileName, col.names="activity"))
        
        # go into the the inertial signals dir
        setwd("Inertial Signals")
        
        # column bind the rest of the data
        result <- cbind(result,
                        read.table(paste("body_acc_x_",directory,".txt"), col.names=createVariableNames("body_acc_x_",128)),
                        read.table(paste("body_acc_y_" , directory, ".txt")),
                        read.table(paste("body_acc_z_", directory, ".txt")),
                        read.table(paste("body_gyro_x_", directory, ".txt")),
                        read.table(paste("body_gyro_y_", directory, ".txt")),
                        read.table(paste("body_gyro_z_", directory, ".txt")),
                        read.table(paste("total_acc_x_", directory, ".txt")),
                        read.table(paste("total_acc_y_", directory, ".txt")),
                        read.table(paste("total_acc_z_", directory, ".txt"))
        )
        
        # reset directory
        setwd(old.dir)
        
        result
}

readData <- function(){
        
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
        
        test <- readSet("test", features[,2])
        train <- readSet("train", features[,2])
}