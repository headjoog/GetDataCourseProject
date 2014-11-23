

## Coursera Getting and Cleaning Data
### Course Project:  UCI HAR (Human Activity Recognition) Dataset

### Overview
The goal of this project is to create a "tidy" dataset from several files found in the UCI Machine Learning Repository.  The output dataset indicates the mean for each measurement of a "mean" and "standard deviation", grouped by both activity and subject.

More information about the original Human Activity Recognition project and source data that was used in this assignment can be found at the following URL:  [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

### Source Data Description
The source data consisted of several files which were downloaded from the repository above.  These files consisted of a training set, a test set, a feature list, a subject list, and an activity list.  

activity_labels.txt:  A file listing the activity id and activity description (Activity ids range from 1 to 6 inclusive).
features.txt:  A file containing the "features" measured from an acceleromoter and gyroscope for a Samsung mobile device.  
Features were categorized by vector direction and estimates.
x_test.txt:  A file containing the values of the features estimates for the test set.  
y_test.txt:  A file containing the activity type of the subject for the test set.
subject_test.txt:  A file containing the subject identifier for the test set.
x_train.txt:  A file containing the values of the features estimates for the training set.
y_train.txt:  A file containing the activity type of the subject for the training set.
subject_train.txt: A file containing the the subject identifier for the training set.

The reader is referred to the UCI Machine Learning Repository above for detailed definitions regarding the feature set.

Of note is that the original feature set contains 562 variables across a wide range of estimates.  The desired output data set should only contain columns related to the "mean" and "standard deviation" measurement of the feature set.  Therefore, a reduction of the number of columns will be required. 

### Approach
A R program script was used to read in the files noted above and perform transformations on the original data set to arrive at an aggregated output data set of column means grouped by subject and activity.  The follow steps were used in the R program script ("CourseAssignment.R") to arrive at the final output:

1.  Read the source files into data frames.
2.  Apply the subject IDs to the feature set frame for use in final grouping.
3.  Apply the appropriate labels to the feature data sets.
4.  Assign activity labels to the data sets for use in final grouping.
5.  Combine the x and y sets.
6.  Extract only the columns with mean and standard deviation measurements.
7.  Build the aggregate output, which provides the mean of each measurement for each subject and activity.
8.  Output the final file of the aggregates.

The reader is referred to the detailed R program script for line-by-line comments in the program and more detail.

### Output Data:   
The final output data for the assignment is a 180 by 80 file with the calculated mean for each measurement category shown below: 

 [1] "ActivityDescription" - The long description of the activity peformed by the subject
 [2] "SubjectID" - The subject identifier.                      
 [3] "ActivityNumber" - The activity identifier.                  
 [4] "tBodyAcc-mean()-X" - calculated mean of the tBodyAcc-mean() value (time domain linear acceleration of the body in the X plane)               
 [5] "tBodyAcc-mean()-Y" - calculated mean of the tBodyAcc-mean() value (time domain linear acceleration of the body in the Y plane)             
 [6] "tBodyAcc-mean()-Z" - calculated mean of the tBodyAcc-mean() value (time domain linear acceleration of the body in the Z plane)            
 [7] "tGravityAcc-mean()-X" - calculated mean of the tGravityAcc-mean() value (time domain acceleration of the body in the X plane due to gravity)
 [8] "tGravityAcc-mean()-Y" - calculated mean of the tGravityAcc-mean() value (time domain acceleration of the body in the Y plane due to gravity)
 [9] "tGravityAcc-mean()-Z" - calculated mean of the tGravityAcc-mean() value (time domain acceleration of the body in the Z plane due to gravity)            
 [10] "tBodyAccJerk-mean()-X" - calculated mean of the tBodyAccJerk-mean() value (time domain "jerk" of the body in the X plane due to gravity)          
[11] "tBodyAccJerk-mean()-Y" - calculated mean of the tBodyAccJerk-mean() value (time domain "jerk" of the body in the Y plane due to gravity)                     
[12] "tBodyAccJerk-mean()-Z"- calculated mean of the tBodyAccJerk-mean() value (time domain "jerk" of the body in the Z plane due to gravity)                    
[13] "tBodyGyro-mean()-X" - calculated mean of the tBodyGyro-mean() value (time domain body angular speed in the X plane)
[14] "tBodyGyro-mean()-Y" - calculated mean of the tBodyGyro-mean() value (time domain body angular speed in the Y plane)             
[15] "tBodyGyro-mean()-Z" - calculated mean of the tBodyGyro-mean() value (time domain body angular speed in the Z plane)              
[16] "tBodyGyroJerk-mean()-X" - calculated mean of the tBodyGyroJerk-mean() value (time domain body jerk angular speed in the X plane)         
[17] "tBodyGyroJerk-mean()-Y" - calculated mean of the tBodyGyroJerk-mean() value (time domain body jerk angular speed in the Y plane)          
[18] "tBodyGyroJerk-mean()-Z" - calculated mean of the tBodyGyroJerk-mean() value (time domain body jerk angular speed in the Z plane)        
[19] "tBodyAccMag-mean()" - calculated mean of the tBodyAccMag-mean() value (time domain body acceleration magnitude)              
[20] "tBodyAccJerkMag-mean()" - calculated mean of the tBodyAccJerkMag-mean() value (time domain body acceleration jerk magnitude)         
[21] "tBodyGyroMag-mean()" - calculated mean of the tBodyGyroMagnitude-mean() value (time domain body angular speed magnitude)             
[22] "tBodyGyroJerkMag-mean()" - calculated mean of the tBodyGyroJerkMag-mean() value (time domain body angular speed jerk Magnitude)        
[23] "fBodyAcc-mean()-X" - calculated mean of the tBodyAcc-mean() value (frequency domain linear acceleration of the body in the X plane)                 
[24] "fBodyAcc-mean()-Y" - calculated mean of the tBodyAcc-mean() value (frequency domain linear acceleration of the body in the Y plane)              
[25] "fBodyAcc-mean()-Z" - calculated mean of the tBodyAcc-mean() value (frequency domain linear acceleration of the body in the Z plane)                
[26] "fBodyAcc-meanFreq()-X" - calculated mean of the tBodyAcc-meanFreq() value (frequency domain linear acceleration mean frequency  of the body in the X plane)          
[27] "fBodyAcc-meanFreq()-Y" - calculated mean of the tBodyAcc-meanFreq() value (frequency domain linear acceleration mean frequency of the body in the Y plane)            
[28] "fBodyAcc-meanFreq()-Z" - calculated mean of the tBodyAcc-meanFreq() value (frequency domain linear acceleration mean frequency of the body in the Z plane         
[29] "fBodyAccJerk-mean()-X" - calculated mean of the tBodyAccJerk-mean() value (frequency domain acceleration jerk of the body in the X plane          
[30] "fBodyAccJerk-mean()-Y" - calculated mean of the tBodyAccJerk-mean() value (frequency domain acceleration jerk of the body in the Y pl
[31] "fBodyAccJerk-mean()-Z" - calculated mean of the tBodyAccJerk-mean() value (frequency domain acceleration jerk of the body in the Z pl          
[32] "fBodyAccJerk-meanFreq()-X" - calculated mean of the tBodyAccJerk-meanFreq() value (frequency domain acceleration jerk mean frequency of the body in the X plane)     
[33] "fBodyAccJerk-meanFreq()-Y" - calculated mean of the tBodyAccJerk-meanFreq() value (frequency domain acceleration jerk mean frequency of the body in the Y plane)            
[34] "fBodyAccJerk-meanFreq()-Z" - calculated mean of the tBodyAccJerk-meanFreq() value (frequency domain acceleration jerk mean frequency of the body in the Z plane)          
[35] "fBodyGyro-mean()-X" - calculated mean of the tBodyGyro-mean() value (frequency domain angular speed of the body in the X plane)                   
[36] "fBodyGyro-mean()-Y" - calculated mean of the tBodyGyro-mean() value (frequency domain angular speed of the body in the Y plane)                               
[37] "fBodyGyro-mean()-Z" - calculated mean of the tBodyGyro-mean() value (frequency domain angular speed of the body in the Z plane)                               
[38] "fBodyGyro-meanFreq()-X" - calculated mean of the tBodyGyro-meanFreq() value (frequency domain angular speed mean frequency of the body in the X plane)                           
[39] "fBodyGyro-meanFreq()-Y" - calculated mean of the tBodyGyro-meanFreq() value (frequency domain angular speed mean frequency of the body in the Y plane)                          
[40] "fBodyGyro-meanFreq()-Z" - calculated mean of the tBodyGyro-meanFreq() value (frequency domain angular speed mean frequency of the body in the Z plane)                          
[41] "fBodyAccMag-mean()" - calculated mean of the tBodyAccMag-mean() value (frequency domain acceleration magnitude mean)                              
[42] "fBodyAccMag-meanFreq()" - calculated mean of the tBodyAccMag-meanFreq() value (frequency domain acceleration magnitude mean frequency)                                      
[43] "fBodyBodyAccJerkMag-mean()" - calculated mean of the tBodyAccJerkMag-mean() value (frequency domain acceleration jerk magnitude)       
[44] "fBodyBodyAccJerkMag-meanFreq()" - calculated mean of the tBodyAccJerkMag-meanFreq() value (frequency domain acceleration jerk magnitude mean frequency) 
[45] "fBodyBodyGyroMag-mean()" - calculated mean of the tBodyBodyGyroMag-mean() value (frequency domain angular speed magnitude mean)          
[46] "fBodyBodyGyroMag-meanFreq()" - calculated mean of the tBodyBodyGyroMag-meanFreq() value (frequency domain angular speed magnitude mean frequency)    
[47] "fBodyBodyGyroJerkMag-mean()" - calculated mean of the tBodyBodyGyroJerkMag-mean() value (frequency domain angular speed jerk magnitude mean)    
[48] "fBodyBodyGyroJerkMag-meanFreq()" - calculated mean of the tBodyBodyGyroMag-mean() value (frequency domain angular speed jerk magnitude mean frequency)
[49] "tBodyAcc-std()-X" - calculated standard deviation of the tBodyAcc-std() value (time domain acceleration in the X-plane)               
[50] "tBodyAcc-std()-Y" - calculated standard deviation of the tBodyAcc-std() value (time domain acceleration in the Y-plane)               
[51] "tBodyAcc-std()-Z" - calculated standard deviation of the tBodyAcc-std() value (time domain acceleration in the Z-plane)                
[52] "tGravityAcc-std()-X" - calculated standard deviation of the tGravityAcc-std() value (time domain acceleration due to gravity in the X-plane)            
[53] "tGravityAcc-std()-Y" - calculated standard deviation of the tGravityAcc-std() value (time domain acceleration due to gravity in the Y-plane)             
[54] "tGravityAcc-std()-Z" - calculated standard deviation of the tGravityAcc-std() value (time domain acceleration due to gravity in the Z-plane)            
[55] "tBodyAccJerk-std()-X" - calculated standard deviation of the tBodyAccJerk-std() value (time domain jerk acceleration in the X-plane)           
[56] "tBodyAccJerk-std()-Y" - calculated standard deviation of the tBodyAccJerk-std() value (time domain jerk acceleration in the Y-plane)            
[57] "tBodyAccJerk-std()-Z" - calculated standard deviation of the tBodyAccJerk-std() value (time domain jerk acceleration in the Z-plane)             
[58] "tBodyGyro-std()-X" - calculated standard deviation of the tBodyGyro-std() value (time domain angular speed in the X-plane)              
[59] "tBodyGyro-std()-Y" - calculated standard deviation of the tBodyGyro-std() value (time domain angular speed in the Y-plane)              
[60] "tBodyGyro-std()-Z" - calculated standard deviation of the tBodyGyro-std() value (time domain angular speed in the Z-plane)             
[61] "tBodyGyroJerk-std()-X" - calculated standard deviation of the tBodyGyroJerk-std() value (time domain angular speed of jerk in the X-plane)           
[62] "tBodyGyroJerk-std()-Y" - calculated standard deviation of the tBodyGyroJerk-std() value (time domain angular speed of jerk in the Y-plane)          
[63] "tBodyGyroJerk-std()-Z" - calculated standard deviation of the tBodyGyroJerk-std() value (time domain angular speed of jerk in the Z-plane)            
[64] "tBodyAccMag-std()" - calculated standard deviation of the tBodyAccMag-std() value (time domain magnitude of acceleration)              
[65] "tBodyAccJerkMag-std()" - calculated standard deviation of the tBodyAccJerkMag-std() value (time domain magnitude of jerk)            
[66] "tBodyGyroMag-std()" - calculated standard deviation of the tBodyGyroMag-std() value (time domain angular speed magnitude)              
[67] "tBodyGyroJerkMag-std()" - calculated standard deviation of the tBodyGyroJerkMag-std() value (time domain angular speed of jerk magnitude)          
[68] "fBodyAcc-std()-X" - calculated standard deviation of the fBodyAcc-std() value (frequency domain acceleration in the X-plane)                
[69] "fBodyAcc-std()-Y" - calculated standard deviation of the fBodyAcc-std() value (frequency domain acceleration in the Y-plane)                
[70] "fBodyAcc-std()-Z" - calculated standard deviation of the fBodyAcc-std() value (frequency domain acceleration in the Z-plane)               
[71] "fBodyAccJerk-std()-X" - calculated standard deviation of the fBodyAccJerk-std() value (frequency domain jerk acceleration in the X-plane)            
[72] "fBodyAccJerk-std()-Y" - calculated standard deviation of the fBodyAccJerk-std() value (frequency domain jerk acceleration in the Y-plane)           
[73] "fBodyAccJerk-std()-Z" - calculated standard deviation of the fBodyAccJerk-std() value (frequency domain acceleration in the Z-plane)            
[74] "fBodyGyro-std()-X" - calculated standard deviation of the fBodyGyro-std() value (frequency domain angular speed in the X-plane)             
[75] "fBodyGyro-std()-Y" - calculated standard deviation of the fBodyGyro-std() value (frequency domain angular speed in the Y-plane)                
[76] "fBodyGyro-std()-Z" - calculated standard deviation of the fBodyGyro-std() value (frequency domain angular speed in the Z-plane)               
[77] "fBodyAccMag-std()" - calculated standard deviation of the fBodyAccMag-std() value (frequency domain acceleration magnitude )               
[78] "fBodyBodyAccJerkMag-std()" - calculated standard deviation of the fBodyBodyAccJerkMag-std() value (frequency domain jerk acceleration magnitude )       
[79] "fBodyBodyGyroMag-std()" - calculated standard deviation of the fBodyBodyGyroMag-std() value (frequency domain angular speed magnitude )           
[80] "fBodyBodyGyroJerkMag-std()" - calculated standard deviation of the fBodyBodyGyroJerkMag-std() value (frequency domain angular speed jerk magnitude ) 