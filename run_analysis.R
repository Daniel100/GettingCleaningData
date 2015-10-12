
# Human Activity Recognition Using Smartphones Data Set -------------------------------------------
# Boesch Daniel 
# 2015-10-11

# TASKS:
    # You should create one R script called run_analysis.R that does the following. 
    # Merges the training and the test sets to create one data set.
    # Extracts only the measurements on the mean and standard deviation for each measurement. 
    # Uses descriptive activity names to name the activities in the data set
    # Appropriately labels the data set with descriptive variable names. 
    # From the data set in step 4, creates a second, independent tidy data set with the average 
    # of each variable for each activity and each subject.

# Loading Packages --------------------------------------------------------------------------------
library(data.table)

# Loading the RAW-DATA ----------------------------------------------------------------------------
if( !file.exists("DATA") ){
  dir.create("DATA")
}
if( !file.exists("DATA/UCI_HAR_DATASET")){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  zipDATA <- "DATA/UCI_HAR_DATASET"
  download.file(fileURL, destfile=zipDATA, method="curl")
  unzip(zipDATA, exdir =  "DATA")
}

ACTIVITY_LABELS <- fread("./DATA/UCI HAR Dataset/activity_labels.txt")
FEATURES <- fread("./DATA/UCI HAR Dataset/features.txt")
names(FEATURES) <- c("ID","ACTIVITY")

path <- "./DATA/UCI HAR Dataset/train/"
X_TRAIN_DATA <- fread(paste(path,"X_train.txt", sep=""))
Y_TRAIN_DATA <- fread(paste(path,"Y_train.txt", sep=""))
SUBJECT_TRAIN_DATA <- fread(paste(path,"subject_train.txt", sep=""))

path <- "./DATA/UCI HAR Dataset/test/"
X_TEST_DATA <- fread(paste(path,"X_test.txt", sep=""))
Y_TEST_DATA <- fread(paste(path,"Y_test.txt", sep=""))
SUBJECT_TEST_DATA <- fread(paste(path,"subject_test.txt", sep=""))

TRAIN_DATA <- cbind(SUBJECT_TRAIN_DATA, Y_TRAIN_DATA, X_TRAIN_DATA)
TEST_DATA  <- cbind(SUBJECT_TRAIN_DATA, Y_TRAIN_DATA, X_TRAIN_DATA)
ALL_DATA   <- rbind(TRAIN_DATA, TEST_DATA)
names(ALL_DATA) <-c("SUBJECTS", "ACTIVITY", FEATURES[, V2])

# Extracts only the measurements on the mean and standard deviation for each measurement.
MATCHES <- which(grepl("std|mean", names(ALL_DATA)))
MATCHES_NAMES <- names(ALL_DATA)[c(1, 2, MATCHES)]
DATA_STD_MEAN <- subset(ALL_DATA, select = MATCHES_NAMES)
#MERGE ACTIVITY AND NAME OF ACTIVITY TOGETHER !!!

#TODO: 

  # Uses descriptive activity names to name the activities in the data set
  # Appropriately labels the data set with descriptive variable names. 
  # From the data set in step 4, creates a second, independent tidy data set with the average 
  # of each variable for each activity and each subject.

# melt 
# write.csv(tidy, "UCI_HAR_tidy.csv", row.names=FALSE)


