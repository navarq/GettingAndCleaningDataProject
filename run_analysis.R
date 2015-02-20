# Step 1 merging the test and train data sets

# Assume in correct directory with test and train datasets

# hold old variable of directory location

old.dir <- getwd()

# go to test directory

setwd("test")

if(!file.exists("subject_test.txt")){
        message("no file found!")
}

# read the first vector subject_test
subject_test <- read.table("subject_test.txt")

if(!file.exists("X_test.txt")){
        message("no file found!")
}

X_test <- read.table("X_test.txt")

if(!file.exists("Y_test.txt")){
        message("no file found!")
}

Y_test <- read.table("Y_test.txt")

test<- cbind(subject_test, X_test, Y_test)

# name the columns just added
colnames(test)[1:3] <- c("subjectId","X","Y")

# go into the the inertial signals dir
setwd("Inertial Signals")
