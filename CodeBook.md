

## Getting and Cleaning Data Course Project Code book

This file describes the variables, the data and any transformations that I have performed to clean up the data.

STUDYNAME: Wearable Computing.

SUMMARY: The source of the file is a study into wearable computing. The data for this code book has been taken using 
Samsung II smart phones strapped on the waist of 30 volunteers. Using the embedded accelerometer and gyroscope, 
3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz was collected.

Each volunteer had perfomed six activities. The data orginal came from the Human Activity Recognition Using 
Smartphones Dataset. With the authors Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.

Before transformation the original 2 datasets test (2947 observations) and training (7352 observations) had 
a total of 10299 observations and 1715 variables.

EXTENT OF COLLECTION: 

'merged.txt': This is the merged test and training datasets. This is before the selection of mean
			  and standard deviation columns. The full list of variable names, which is unique is
			  explained in the features and features.info file found in the raw dataset. The 
			  inertial signals are also found within this file. 

'tidy.txt' The output file tidy data with a complete set of data that is explained by the following 
		   code it contains 180 observations with 89 variables. The angle variable referred to is in
		   the original raw dataset and can be found in the above "merged.txt" file 
  
Codebook for test and train datasets 

CODEBOOK:

Variable Name				Position		Values or Explaination
activityid 					1				The activity identifier, possible values 1-6, Links the class labels with their activity name.
subjectid					2				The subject identifier, Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
tbodyaccmean				3-5 		    XYZ mean of triaxial acceleration time domain signal from the accelerometer				
tbodyaccstd					6-8				XYZ standard deviation of the triaxial acceleration time domain signal 
tgravityaccmean				9-11		    XYZ mean of the triaxial gravitational time domain signal used on angle variable
tgravityaccstd				12-14			XYZ standard deviation of the triaxial gravitational time domain signal used on angle variable
tbodyaccjerkmean			15-16			XYZ mean of the body linear acceleration and angular velocity derived in time used on angle variable
tbodyaccjerkstd				17-19			XYZ standard deviation of the body linear acceleration and angular velocity derived in time  used on angle variable
tbodygyromean				20-22			XYZ mean of the triaxial Angular velocity of the body motion time domain signal used on angle variable
tbodygyrostd				23-25			XYZ standard deviation of the triaxial Angular velocity of the body motion time domain signal used on angle variable
tbodygyrojerkmean			26-27			XYZ mean of the triaxial Angular velocity of the time domain signal used on the angle variable
tbodygyrojerkstd			28-31			XYZ standard deviation of the triaxial Angular velocity of the time domain signal used on the angle variable
tbodyaccmagmean				32				mean of the magnitude of the time domain signal of body acceleration calculated using the Euclidean norm
tbodyaccmagstd				33				standard deviation of the magnitude of the time domain signal of body acceleration calculated using the Euclidean norm
tgravityaccmagmean			34				mean of the magnitude of the time domain gravity acceleration signal
tgravityaccmagstd			35				standard deviation of the magnitude of the time domain gravity acceleration signal
tbodyaccjerkmagmean			36				magitude of the mean of the body linear acceleration and angular velocity derived in time
tbodyaccjerkmagstd
"tbodygyromagmean"
"tbodygyromagstd"
"tbodygyrojerkmagmean"
"tbodygyrojerkmagstd"
"fbodyaccmeanx"
"fbodyaccmeany"
"fbodyaccmeanz"
"fbodyaccstdx"
"fbodyaccstdy"
"fbodyaccstdz"
"fbodyaccmeanfreqx"
"fbodyaccmeanfreqy"
"fbodyaccmeanfreqz"
"fbodyaccjerkmeanx"
"fbodyaccjerkmeany"
"fbodyaccjerkmeanz"
"fbodyaccjerkstdx"
"fbodyaccjerkstdy"
"fbodyaccjerkstdz"
"fbodyaccjerkmeanfreqx"
"fbodyaccjerkmeanfreqy"
"fbodyaccjerkmeanfreqz"
"fbodygyromeanx"
"fbodygyromeany"
"fbodygyromeanz"
"fbodygyrostdx"
"fbodygyrostdy"
"fbodygyrostdz"
"fbodygyromeanfreqx"
"fbodygyromeanfreqy"
"fbodygyromeanfreqz"
"fbodyaccmagmean"
"fbodyaccmagstd"
"fbodyaccmagmeanfreq"
"fbodybodyaccjerkmagmean"
"fbodybodyaccjerkmagstd"
"fbodybodyaccjerkmagmeanfreq"
"fbodybodygyromagmean"
"fbodybodygyromagstd"
"fbodybodygyromagmeanfreq"
"fbodybodygyrojerkmagmean"
"fbodybodygyrojerkmagstd"
"fbodybodygyrojerkmagmeanfreq"
"angletbodyaccmeangravity"
"angletbodyaccjerkmeangravitymean"
"angletbodygyromeangravitymean"
"angletbodygyrojerkmeangravitymean"
"anglexgravitymean"
"angleygravitymean"
"anglezgravitymean"
"activity"					activity name refered to by activityid at position one		

