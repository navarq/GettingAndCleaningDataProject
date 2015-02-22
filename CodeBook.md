

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

'run_anal'

'merged.txt': This is the 

  
Codebook for test and train datasets 

CODEBOOK:

Variable Name				Position		Values or Explaination
activityid 					1				The activity identifier, possible values 1-6, Links the class labels with their activity name.
subjectid					2				The subject identifier, Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
tbodyaccmean				3-5 		    x,y,z mean of triaxial acceleration from the accelerometer				
tbodyaccstd					6-8				x,y,z standard deviation of the triaxial acceleration 
tgravityaccmean				9-11		    x,y,z mean of the triaxial gravitational component the sensor acceleration signal
tgravityaccstd				12-14			x,y,z standard deviation of the  triaxial gravitational component
tbodyaccjerkmeanx			15-16			x,y,z mean of the body motion component of sensor acceleration signal
tbodyaccjerkstd				17-19			x,y,z standard deviation of the body motion component of sensor acceleration signal
"tbodygyromeanx"
"tbodygyromeany"
"tbodygyromeanz"
"tbodygyrostdx"
"tbodygyrostdy"
"tbodygyrostdz"
"tbodygyrojerkmeanx"
"tbodygyrojerkmeany"
"tbodygyrojerkmeanz"
"tbodygyrojerkstdx"
"tbodygyrojerkstdy"
"tbodygyrojerkstdz"
"tbodyaccmagmean"
"tbodyaccmagstd"
"tgravityaccmagmean"
"tgravityaccmagstd"
"tbodyaccjerkmagmean"
"tbodyaccjerkmagstd"
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
"activity"					activity name refered to by activityid above		

