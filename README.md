GetDataCourseProject
====================

Coursera Getting Data Course Project

Refer to Codebook for detail: [Codebook.md](Codebook.md)

R Script for processing: [run_analysis.R](https://github.com/headjoog/GetDataCourseProject/blob/master/run_analysis.R)

Output Data Set: [Output Data](https://github.com/headjoog/GetDataCourseProject/blob/master/GetDataCourseProject.txt)

The R program script (run_analysis.R) was used to read in the files of the source data set (refer to the Codebook.MD for more detail).  The script was used to perform the following tasks:

1.  Read the source files into data frames.
2.  Apply the subject IDs to the feature set frame for use in final grouping.
3.  Apply the appropriate labels to the feature data sets.
4.  Assign activity labels to the feature data sets.
5.  Combine the x and y sets.
6.  Extract only the columns with mean and standard deviation measurements.
7.  Build the aggregate output, which provides the mean of each measurement for each subject and activity.
8.  Output the final file of the aggregates.


