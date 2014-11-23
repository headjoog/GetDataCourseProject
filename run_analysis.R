#  CourseAssignment.R:
#  Getting and Cleaning Data - Course Project Source
#  Refer to Coursera course detail


# load the data.table library for later use
library(data.table)

# set the working directory
setwd("~/Documents/coursera/GettingData/UCI HAR Dataset")

# read the X_test data sets
x_test <- read.table("test/X_test.txt")

# read the subject ids for the test data set
subject_test <- read.table("test/subject_test.txt")

# change the column name on the subject set
colnames(subject_test) <- c("SubjectID")

# change the column name on the test x set
features <- read.table("features.txt")
colnames(x_test) <- features$V2

# add the subject column
x_test <- cbind(subject_test,x_test)

# read the X_train set
x_train <- read.table("train/X_train.txt")

# add the subject ids
subject_train <- read.table("train/subject_train.txt")

# change the column name on the subject set
colnames(subject_train) <- c("SubjectID")

# change the column name on the train x set
colnames(x_train) <- features$V2

# add the train subject ids to the x_train set
x_train <- cbind(subject_train,x_train)

# combine the x_test and x_train sets into one
x_set <- rbind(x_test,x_train)

# read the Y_test and Y_train datasets
y_test <- read.table("test/y_test.txt")
y_train <- read.table("train/y_train.txt")

# combine the y_test and y_train sets into one
y_set <- rbind(y_test,y_train)
colnames(y_set) <- c("ActivityNumber")


# assign labels to the y-set
activities <- read.table("activity_labels.txt")

# add a description column to the y_set
y_set <- cbind(y_set,factor(y_set$ActivityNumber,labels=c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")))
colnames(y_set) <- c("ActivityNumber","ActivityDescription")

# combine x and y into one set
xy_set <- cbind(y_set,x_set)

## find only column index with "mean" in the name
mean_columnidx <- grep("mean",colnames(xy_set))


## find only column index with "std" in the name
std_columnidx <- grep("std",colnames(xy_set))

## get the columns with "mean" in it
mean_set <- xy_set[,c(3,1,2,mean_columnidx)]

## and the same for columns with "std" in them
std_set <- xy_set[,c(3,1,2,std_columnidx)]

# now join the two together based on subject id and activity
finalxyout <- cbind(mean_set,std_set)
# remove the dup subject/activity columns
subout <- finalxyout[!duplicated(lapply(finalxyout,summary))]

# change to a data table to apply the groupings
dtsubout <- data.table(subout) 

# build the aggregates
aggfinal <- dtsubout[,lapply(.SD,mean),by=list(ActivityDescription,SubjectID)]

# output please...
write.table(aggfinal,file="CourseProjectSubmit.txt",row.names=FALSE)

# whew...
