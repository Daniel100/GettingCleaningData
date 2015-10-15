---------------------------------------------------------------------
"Code Book for Human Activity Recognition Using Smartphones Data Set"
---------------------------------------------------------------------


## Data

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities ***(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)  ***wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 


## Source
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip]

This file contains: 

1. subject_test.txt
2. X_test.txt
3. Y_test.txt
1. subject_train.txt
2. X_train.txt
3. Y_train.txt
4. activity_labels.txt
5. features.txt
6. feature_info.txt
7. README.txt

## Cleaning the Data

### Step 1:

Loading the data in from the file in R. Add the variable Y_test.txt to X_test.txt and Y_train.txt to X_train.tx. Subsequently, the tables are joined. Than we have on big table.

### Step 2:

Naming of the variables

### Step 3:

Extracts the measurements on the mean and standard deviation for each measurement

### Step 4:

Replace the ACTIVITY with the name of the ACTIVITY

### Step 5:

Creates a second, independent tidy data set with the average of each variable for each activity and each subject and
names this variables.

### Step 6:

This tidy data set has the name  UCI_HAR_DATA_TIDY.csv



