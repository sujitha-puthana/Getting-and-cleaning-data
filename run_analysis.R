## install the reshape2 package
install.packages("reshape2")

library(reshape2)

## Download and unzip the dataset:
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")

# unzip the dataset
unzip(zipfile="./data/Dataset.zip",exdir="./data")

## Reading files
# Reading trainings tables:
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

# Reading testing tables:
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

# Reading feature vector:
features <- read.table('./data/UCI HAR Dataset/features.txt')

# Reading activity labels:
activityLabels = read.table('./data/UCI HAR Dataset/activity_labels.txt')

## Assign column names
colnames(x_train) <- features[,2] 
colnames(y_train) <-"activityId"
colnames(subject_train) <- "subjectId"

colnames(x_test) <- features[,2] 
colnames(y_test) <- "activityId"
colnames(subject_test) <- "subjectId"

colnames(activityLabels) <- c('activityId','activityType')

## 1. Merge train and test data to one

mrg_train <- cbind(y_train, subject_train, x_train)
mrg_test <- cbind(y_test, subject_test, x_test)
setAllInOne <- rbind(mrg_train, mrg_test)

## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
colNames <- colnames(setAllInOne)

# creating a vector
mean_and_std <- (grepl("activityId" , colNames) | 
                   grepl("subjectId" , colNames) | 
                   grepl("mean.." , colNames) | 
                   grepl("std.." , colNames) 
)

# creating the subset
setForMeanAndStd <- setAllInOne[ , mean_and_std == TRUE]

## 3. Uses descriptive activity names to name the activities in the data set
setWithActivityNames <- merge(setForMeanAndStd, activityLabels,
                              by='activityId',
                              all.x=TRUE)

## 4. Appropriately labels the data set with descriptive variable names.

secTidySet <- aggregate(. ~subjectId + activityId, setWithActivityNames, mean)
secTidySet <- secTidySet[order(secTidySet$subjectId, secTidySet$activityId),]

## 5. Writing tidy data set with the average of each variable for each activity and each subject.

write.table(secTidySet, "tidy_data.txt", row.name=FALSE, quote=FALSE)

