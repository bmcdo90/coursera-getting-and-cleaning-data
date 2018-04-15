# coursera-getting-and-cleaning-data

The goal of this project was to prepare tidy data that can be used for later analysis. Data collected from the accelerometer and gyroscope of the Samsung Galaxy S smartphone was retrieved and cleaned to prepare a tidy data set.

## Background
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

## Contents
This repository contains the following files:

- `README.md`, this file, which provides an overview of the data set and how it was created.
- `average_per_student_activity.txt`, which contains the tidy data set that resulted from the script below.
- `CodeBook.md`, the code book, which describes the contents of the data set (data, variables and transformations used to generate the data).
- `run_analysis.R`, the R script that was used to create the data set  

## Creating the data set <a name="creating-data-set"></a>

The R script `run_analysis.R` can be used to create the data set. It retrieves the source data set and transforms it to produce the final data set by implementing the following steps (see the Code book for details, as well as the comments in the script itself):

- Download and unzip source data if it doesn't exist.
- Read different data sets.
- Merge the training, test, subject and activity data sets to create one data set.
- Extract the measurements on the mean and standard deviation for each measurement.
- Add descriptive activities.
- Update variable names to be descriptive.
- Create an tidy set with the average of each variable for each activity and each subject.
- Write the data set to the `average_per_student_activity.txt` file.

The `average_per_student_activity.txt` in this repository was created by running the `run_analysis.R` script using:

platform       i386-w64-mingw32            
arch           i386                        
os             mingw32                     
system         i386, mingw32                                                   
major          3                           
minor          4.3                         
year           2017                        
month          11                          
day            30                          
svn rev        73796                       
language       R                           
version.string R version 3.4.3 (2017-11-30)
nickname       Kite-Eating Tree            

This script requires the `dplyr` package (version 0.7.4 was used).
