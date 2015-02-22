

# Getting and Cleaning Data

The purpose of this readme is to demonstrate how the scripts work to transform the data from the 
original set of files to the tidy data. The source file was downloaded from 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The steps to run the analysis are as follows:

Step 1. Run R version 3.1.2. 

Step 2. Run the command: source("run_analysis.R")

Step 3. Run the command: run_analysis()

## Functions

The run_analysis.R contains all the functions for doing the analysis. The libraries data.table
and dplyr are required hence referenced at the top. There are no missing values in the tidy dataset.
The top level function run_analysis downloads the file, and carries out the merging and naming.

### createVariableNames Function

The createVariableNames function takes a character of length 1 as its first argument and takes
a second that specifies the length of variable names to create. This function is used to create
more descriptive names for the inertial signals that contain 9 files each of which has 128 
observations each for:
* Accelerometer signal in the X,Y,Z axis. prefixed by totalacc and an axis character
* Body Acceleration signal prefixed by bodyacc and an axis character
* Angular velocity vector prefixed by bodygyro and an axis character

The output of this function is therefore bodyaccx1, bodyaccx2, bodyaccx3 etc.

### readSet Function

The readSet function reads either of the two datasets. The readSet function takes two arguments. 
The first argument is a character vector of length 1 indicating the location of the files and 
the datasets name (either test or train).  The second argument is a vector of x_labels as
supplied by the features.txt after being cleaned. This cleaning is explained in the next function.

The readSet function uses the data.table package. The data.table is faster then the data.frame,
and is better at being manipulation.

The name of the dataset is used to change the directory appropriately. Before the files are opened 
the function checks to see if the subject, x and y  files are found in the folder and shows a
message if not. 

The readSet function uses the createVariableNames to create unique names for the inertial signals. 
By using the name of the dataset the column names of both datasets should match insuring that a 
merge is simpler.  

### run_analysis Function

The run_analysis function uses the readset function to read the raw data files, depending on the name 
of the datasets. Run analysis creates a new directory for the data called data. The function 
downloads the data from the online source given above to a file named getdata.zip and outputs the 
date. The function extracts this data within a "data" directory. 

The function reads the activity names file activity_labels. The function reads the features.txt 
that lists the names of the X labels. A number of filters are run on these names as they would 
not be ideal. Commas "," are removed, as these would convert to dots ".". The names 
are changed into lower case. Hyphens are removed, as these too would convert to dots. Next open 
and close brackets are also removed as these too would be converted to dots. Next the datasets
are read using the readSet function. These datasets are merged using rbind. The columns are then
filtered by the words mean or std appearing in the filename, and the first 2 rows that feature
the activity id and subject id are also filtered. The merged dataset is outputted. Finally the 
aggregate function is used to get the averages over activity and subject identifiers. The
descriptive names, with underscores and capitals removed are from the activity names and these
are added as labels. The activity and subject columns are also converted to factors. Finally the
files for the analysis are deleted.