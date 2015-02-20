

## Getting and Cleaning Data Course Project Code book

This file describes the variables, the data and any transformations that I have performed to clean up the data.

SUMMARY: The source of the file is a study into wearable computing. The data for this code book has been taken using 
Samsung II smart phones strapped on the waist of 30 volunteers. Using the embedded accelerometer and gyroscope, 
3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz was collected.

Each volunteer had perfomed six activities. The data orginal came from the Human Activity Recognition Using 
Smartphones Dataset. With the authors Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.


EXTENT OF COLLECTION: 

'features_info.txt': Shows information about the variables used on the feature vector.

'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

2 data sets. Each data set contains:

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Before transformation the original 2 datasets test (2947 observations) and training (7352 observations) had 
a total of 10299 observations and 1715 variables.
  
Codebook for test and train datasets 


STUDYNAME:

CODEBOOK:

