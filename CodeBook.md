

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
		   the original raw dataset and can be found in the above "merged.txt" file. The code book 
		   contains the original name as in the merged file as well as the variable name
  
Codebook for test and train datasets 

CODEBOOK:

Variable-Name original-name				Position		Values or Explaination
activityid	activityid 					1				The activity identifier, possible values 1-6, Links the class labels with their activity name.
subjectid	subjectid					2				The subject identifier, Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
timebodyaccmean	tbodyaccmean					3-5	    XYZ mean of triaxial acceleration time domain signal from the accelerometer			
timebodyaccstd	tbodyaccstd					6-8				XYZ standard deviation of the triaxial acceleration time domain signal 
timegravityaccmean	tgravityaccmean					9-11	    XYZ mean of the triaxial gravitational time domain signal used on angle variable			
timegravityaccstd	tgravityaccstd					12-14		XYZ standard deviation of the triaxial gravitational time domain signal used on angle variable		
timebodyaccjerkmean	tbodyaccjerkmean			15-16			XYZ mean of the body linear acceleration and angular velocity derived in time used on angle variable			
timebodyaccjerkstd	tbodyaccjerkstd				17-19			XYZ standard deviation of the body linear acceleration and angular velocity derived in time  used on angle variable		
timebodygyromean	tbodygyromean				20-22			XYZ mean of the triaxial Angular velocity of the body motion time domain signal used on angle variable		
timebodygyrostd	tbodygyrostd				23-25			XYZ standard deviation of the triaxial Angular velocity of the body motion time domain signal used on angle variable		
timebodygyrojerkmean	tbodygyrojerkmean			26-27			XYZ mean of the triaxial Angular velocity of the time domain signal used on the angle variable			
timebodygyrojerkstdx	tbodygyrojerkstd			28-31			XYZ standard deviation of the triaxial Angular velocity of the time domain signal used on the angle variable			
timebodyaccmagmean	tbodyaccmagmean				32				mean of the magnitude of the time domain signal of body acceleration calculated using the Euclidean norm	
timebodyaccmagstd	tbodyaccmagstd				33				standard deviation of the magnitude of the time domain signal of body acceleration calculated using the Euclidean norm	
timegravityaccmagmean	tgravityaccmagmean			34				mean of the magnitude of the time domain gravity acceleration signal		
timegravityaccmagstd	tgravityaccmagstd			35				standard deviation of the magnitude of the time domain gravity acceleration signal		
timebodyaccjerkmagmean	tbodyaccjerkmagmean			36				magitude of the mean of the body linear acceleration derived in time		
timebodyaccjerkmagstd	tbodyaccjerkmagstd			37				magitude of the standard deviation of the body linear acceleration in time 		
timebodygyromagmean	tbodygyromagmean			38				magitude of the mean of the and angular velocity derived in time used on the angle variable		
timebodygyromagstd	tbodygyromagstd				39				magitude of the standard deviation of the and angular velocity derived in time used on the angle variable	
timebodygyrojerkmagmean	tbodygyrojerkmagmean		40				magitude of the mean of the angular velocity signal derived in time used on the angle variable			
timebodygyrojerkmagstd	tbodygyrojerkmagstd			41				magitude of the standard deviation of the angular velocity signal derived in time used on the angle variable		
frequencybodyaccmean	fbodyaccmean				42-45			XYZ mean frequency of the body triaxial acceleration		
frequencybodyaccstd	fbodyaccstd					46-48			XYZ standard deviation frequency of the body triaxial acceleration	
frequencybodyaccmeanfreq	fbodyaccmeanfreq			49-51			XYZ weighted average of the frequency components to obtain a mean frequency  body triaxial acceleration			
frequencybodyaccjerkmean	fbodyaccjerkmean			52-54			XYZ mean frequency of body linear acceleration derived in time to obtain Jerk signals			
frequencybodyaccjerkstd	fbodyaccjerkstd				55-57			XYZ standard deviation frequency of body linear acceleration derived in time to obtain Jerk signals		
frequencybodyaccjerkmeanfreq	fbodyaccjerkmeanfreq		58-60			XYZ Weighted average of the frequency components to obtain a mean frequency of body linear acceleration derived in time to obtain Jerk signals				
frequencybodygyromean	fbodygyromean				61-63			XYZ	mean frequency of body angular velocity averaging the signals in a signal window sample. These are used on the angle() variable	
frequencybodygyrostd	fbodygyrostd				64-66			XYZ standard deviation frequency of body angular velocity averaging the signals in a signal window sample. These are used on the angle() variable		
frequencybodygyromeanfreq	fbodygyromeanfreq			67-69			XYZ Weighted average of the frequency components of body angular velocity signal to obtain a mean frequency. used on the angle() variable			
frequencybodyaccmagmean	fbodyaccmagmean				70				magnitude frequncy of the mean of body the acceleration	
frequencybodyaccmagstd	fbodyaccmagstd				71				magnitude frequncy of the standard deviation of body the acceleration	
frequencybodyaccmagmeanfreq	fbodyaccmagmeanfreq			72				Body acceleration Weighted average of the frequency components to obtain a mean frequency		
frequencybodybodyaccjerkmagmean	fbodybodyaccjerkmagmean		73				mean frequency magnitude of the body linear acceleration and angular velocity were derived in time to obtain Jerk signals			
frequencybodybodyaccjerkmagstd	fbodybodyaccjerkmagstd		74				standard deviation frequency magnitude of the body linear acceleration and angular velocity were derived in time to obtain Jerk signals			
frequencybodybodyaccjerkmagmeanfreq	fbodybodyaccjerkmagmeanfreq 75				Weighted average of the frequency body linear acceleration derived in fequency components to obtain a mean frequency used on angle variable 					
frequencybodybodygyromagmean	fbodybodygyromagmean		76				Magnitude mean frequency of the angular velocity			
frequencybodybodygyromagstd	fbodybodygyromagstd			77				Magnitude standard deviation frequency of the angular velocity		
frequencybodybodygyromagmeanfreq	fbodybodygyromagmeanfreq	78				weighted average of the frequency angular velocity components to obtain a mean frequency				
frequencybodybodygyrojerkmagmean	fbodybodygyrojerkmagmean	79				Magnitude mean frequency  of the body linear acceleration and angular velocity were derived in time to obtain Jerk signals  used on the angle() variable				
frequencybodybodygyrojerkmagstd	fbodybodygyrojerkmagstd		80				Magnitude standard deviation frequency  of the body linear acceleration and angular velocity were derived in time to obtain Jerk signals  used on the angle() variable			
frequencybodybodygyrojerkmagmeanfreq	fbodybodygyrojerkmagmeanfreq	81			Weighted average of the frequency of the body linear acceleration and angular velocity  derived in time to obtain Jerk signals to obtain a mean frequency					
angletimebodyaccmeangravity	angletbodyaccmeangravity		82			Mean of the Angle of the body linear acceleration time domain signal of the gravity acceleration component 				
angletimebodyaccjerkmeangravitymean	angletbodyaccjerkmeangravitymean 83			Mean of the Angle time domain signal of the gravity acceleration component  obtained by averaging the signals in a signal window sample. used on the angle() variable.						
angletimebodygyromeangravitymean	angletbodygyromeangravitymean	84			Mean of the Angle of the angular velocty time domain signal of the gravity acceleration component  obtained by averaging the signals in a signal window sample. used on the angle() variable.					
angletimebodygyrojerkmeangravitymean	angletbodygyrojerkmeangravitymean 85		angular velocity derived in time to obtain Jerk signals as a mean of the time domain signal							
anglexgravitymean	anglexgravitymean 			86				X component mean of the angle of the gravity acceleration signal		
angleygravitymean	angleygravitymean  			87				Y component mean of the angle of the gravity acceleration signal		
anglezgravitymean	anglezgravitymean 			88				Z component mean of the angle of the gravity acceleration signal		
activity	activity					89				activity name refered to by activityid at position one


