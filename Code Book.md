
# Code Book 
### Summarizing the analyzed UCI HAR Dataset
### Instructions please check the Readme,md
### Source data and transformation please verify run_analysis.R

## Data:

The tidy_data.txt data file is a text file. The header row describes the name of variable and the other row describe the values of the variable.

## Variables:

Each row has 79 averaged signal measurements for a given subject and activity.

### Identifiers:

### ActivityId - Type of activity performed.
o 1 WALKING
o 2 WALKING_UPSTAIRS
o 3 WALKING_DOWNSTAIRS
o 4 SITTING
o 5 STANDING
o 6 LAYING
### SubjectId - Related to the ID of test subject, which ranges from 1 to 30.

### Measurements:

* tBodyAcc-mean()-X 
* tBodyAcc-mean()-Y 
* tBodyAcc-mean()-Z 
* tBodyAcc-std()-X 
* tBodyAcc-std()-Y 
* tBodyAcc-std()-Z 
* tGravityAcc-mean()-X 
* tGravityAcc-mean()-Y 
* tGravityAcc-mean()-Z 
* tGravityAcc-std()-X 
* tGravityAcc-std()-Y 
* tGravityAcc-std()-Z 
* tBodyAccJerk-mean()-X 
* tBodyAccJerk-mean()-Y 
* tBodyAccJerk-mean()-Z 
* tBodyAccJerk-std()-X 
* tBodyAccJerk-std()-Y 
* tBodyAccJerk-std()-Z 
* tBodyGyro-mean()-X 
* tBodyGyro-mean()-Y 
* tBodyGyro-mean()-Z 
* tBodyGyro-std()-X 
* tBodyGyro-std()-Y 
* tBodyGyro-std()-Z 
* tBodyGyroJerk-mean()-X 
* tBodyGyroJerk-mean()-Y 
* tBodyGyroJerk-mean()-Z 
* tBodyGyroJerk-std()-X 
* tBodyGyroJerk-std()-Y 
* tBodyGyroJerk-std()-Z 
* tBodyAccMag-mean() 
* tBodyAccMag-std() 
* tGravityAccMag-mean() 
* tGravityAccMag-std() 
* tBodyAccJerkMag-mean() 
* tBodyAccJerkMag-std() 
* tBodyGyroMag-mean() 
* tBodyGyroMag-std() 
* tBodyGyroJerkMag-mean() 
* tBodyGyroJerkMag-std() 
* fBodyAcc-mean()-X 
* fBodyAcc-mean()-Y 
* fBodyAcc-mean()-Z 
* fBodyAcc-std()-X 
* fBodyAcc-std()-Y 
* fBodyAcc-std()-Z 
* fBodyAcc-meanFreq()-X 
* fBodyAcc-meanFreq()-Y 
* fBodyAcc-meanFreq()-Z 
* fBodyAccJerk-mean()-X 
* fBodyAccJerk-mean()-Y 
* fBodyAccJerk-mean()-Z 
* fBodyAccJerk-std()-X 
* fBodyAccJerk-std()-Y 
* fBodyAccJerk-std()-Z 
* fBodyAccJerk-meanFreq()-X 
* fBodyAccJerk-meanFreq()-Y 
* fBodyAccJerk-meanFreq()-Z 
* fBodyGyro-mean()-X 
* fBodyGyro-mean()-Y 
* fBodyGyro-mean()-Z 
* fBodyGyro-std()-X 
* fBodyGyro-std()-Y 
* fBodyGyro-std()-Z 
* fBodyGyro-meanFreq()-X 
* fBodyGyro-meanFreq()-Y 
* fBodyGyro-meanFreq()-Z 
* fBodyAccMag-mean() 
* fBodyAccMag-std() 
* fBodyAccMag-meanFreq() 
* fBodyBodyAccJerkMag-mean() 
* fBodyBodyAccJerkMag-std() 
* fBodyBodyAccJerkMag-meanFreq() 
* fBodyBodyGyroMag-mean() 
* fBodyBodyGyroMag-std() 
* fBodyBodyGyroMag-meanFreq() 
* fBodyBodyGyroJerkMag-mean() 
* fBodyBodyGyroJerkMag-std() 
* fBodyBodyGyroJerkMag-meanFreq() 
* activityType

## Transformation:

To obtain the tidy data from the “UNI HAR Dataset” the following operations must be performed:

1. Merged the training and test sets to create one data set.
2. Extracted only the measurements on the mean and standard deviation for each measurement.
3. Used descriptive activity names to name the activities in the data set.
4. Appropriately labeled the data set with descriptive variable names.
5. From the data set in step 4, created a second, independent tidy data set with the average of each variable for each activity and each subject.

