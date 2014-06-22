Explanation of run_analysis.R
=============================

This document explains how I have approached the course project for "Getting and Cleaning Data", part of the Coursera Data Science track.  

## Merges the training and the test sets to create one data set.
I used cbind() to attach the subject and acticity data to the train and test data. I then used rbind() to join the train and test data together.

## Extracts only the measurements on the mean and standard deviation for each measurement.
I used the grep() function to extract columns with "mean()" or "std()" in them

## Uses descriptive activity names to name the activities in the data set
I used the merge() function to join the activity labels on to the main dataset to give them descriptive names

## Appropriately labels the data set with descriptive variable names.
I read in the variable names from features.txt and used names() to assign them to the dataset

##Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
I used the aggregate() function to create a tidy dataset with the average for each activity and subject. It's tidy because it has one observation per row and one variable per column.
