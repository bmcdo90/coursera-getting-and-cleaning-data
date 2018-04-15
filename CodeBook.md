# Code Book

This code book summarizes the resulting data fields in `average_per_student_activity.txt`.

## Identifiers

* "Subject" - The ID of the test subject
* "Activity" - The type of activity performed when the corresponding measurements were taken

## Measurements

All measurements are floating-point values, normalised and bounded within [-1,1].

The original features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* "TimeBodyAccelerationmeanX"                  
* "TimeBodyAccelerationmeanY"                  
* "TimeBodyAccelerationmeanZ"                  
* "TimeBodyAccelerationstdX"                   
* "TimeBodyAccelerationstdY"                   
* "TimeBodyAccelerationstdZ"                   
* "TimeGravityAccelerationmeanX"               
* "TimeGravityAccelerationmeanY"               
* "TimeGravityAccelerationmeanZ"               
* "TimeGravityAccelerationstdX"                
* "TimeGravityAccelerationstdY"                
* "TimeGravityAccelerationstdZ"                
* "TimeBodyAccelerationJerkmeanX"              
* "TimeBodyAccelerationJerkmeanY"              
* "TimeBodyAccelerationJerkmeanZ"              
* "TimeBodyAccelerationJerkstdX"               
* "TimeBodyAccelerationJerkstdY"               
* "TimeBodyAccelerationJerkstdZ"               
* "TimeBodyGyroscopemeanX"                     
* "TimeBodyGyroscopemeanY"                     
* "TimeBodyGyroscopemeanZ"                     
* "TimeBodyGyroscopestdX"                      
* "TimeBodyGyroscopestdY"                      
* "TimeBodyGyroscopestdZ"                      
* "TimeBodyGyroscopeJerkmeanX"                 
* "TimeBodyGyroscopeJerkmeanY"                 
* "TimeBodyGyroscopeJerkmeanZ"                 
* "TimeBodyGyroscopeJerkstdX"                  
* "TimeBodyGyroscopeJerkstdY"                  
* "TimeBodyGyroscopeJerkstdZ"                  
* "TimeBodyAccelerationMagmean"                 
* "TimeBodyAccelerationMagstd"                  
* "TimeGravityAccelerationMagmean"              
* "TimeGravityAccelerationMagstd"               
* "TimeBodyAccelerationJerkMagmean"             
* "TimeBodyAccelerationJerkMagstd"              
* "TimeBodyGyroscopeMagmean"                    
* "TimeBodyGyroscopeMagstd"                     
* "TimeBodyGyroscopeJerkMagmean"                
* "TimeBodyGyroscopeJerkMagstd"                 
* "FrequencyBodyAccelerationmeanX"             
* "FrequencyBodyAccelerationmeanY"             
* "FrequencyBodyAccelerationmeanZ"             
* "FrequencyBodyAccelerationstdX"              
* "FrequencyBodyAccelerationstdY"              
* "FrequencyBodyAccelerationstdZ"              
* "FrequencyBodyAccelerationmeanFreqX"         
* "FrequencyBodyAccelerationmeanFreqY"         
* "FrequencyBodyAccelerationmeanFreqZ"         
* "FrequencyBodyAccelerationJerkmeanX"         
* "FrequencyBodyAccelerationJerkmeanY"         
* "FrequencyBodyAccelerationJerkmeanZ"         
* "FrequencyBodyAccelerationJerkstdX"          
* "FrequencyBodyAccelerationJerkstdY"          
* "FrequencyBodyAccelerationJerkstdZ"          
* "FrequencyBodyAccelerationJerkmeanFreqX"     
* "FrequencyBodyAccelerationJerkmeanFreqY"     
* "FrequencyBodyAccelerationJerkmeanFreqZ"     
* "FrequencyBodyGyroscopemeanX"                
* "FrequencyBodyGyroscopemeanY"                
* "FrequencyBodyGyroscopemeanZ"                
* "FrequencyBodyGyroscopestdX"                 
* "FrequencyBodyGyroscopestdY"                 
* "FrequencyBodyGyroscopestdZ"                 
* "FrequencyBodyGyroscopemeanFreqX"            
* "FrequencyBodyGyroscopemeanFreqY"            
* "FrequencyBodyGyroscopemeanFreqZ"            
* "FrequencyBodyAccelerationMagmean"            
* "FrequencyBodyAccelerationMagstd"             
* "FrequencyBodyAccelerationMagmeanFreq"        
* "FrequencyBodyBodyAccelerationJerkMagmean"    
* "FrequencyBodyBodyAccelerationJerkMagstd"     
* "FrequencyBodyBodyAccelerationJerkMagmeanFreq"
* "FrequencyBodyBodyGyroscopeMagmean"           
* "FrequencyBodyBodyGyroscopeMagstd"            
* "FrequencyBodyBodyGyroscopeMagmeanFreq"       
* "FrequencyBodyBodyGyroscopeJerkMagmean"       
* "FrequencyBodyBodyGyroscopeJerkMagstd"        
* "FrequencyBodyBodyGyroscopeJerkMagmeanFreq" 

## Activity Labels

* "WALKING": subject was walking during the test
* "WALKING_UPSTAIRS": subject was walking up a staircase during the test
* "WALKING_DOWNSTAIRS": subject was walking down a staircase during the test
* "SITTING": subject was sitting during the test
* "STANDING": subject was standing during the test
* "LAYING": subject was laying down during the test

## Transformations
The zip file containing the source data is located at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

The following transformations were applied to the source data:

1. The train and test data sets, labels, subjects were read from the files and merged together.
1. The column names were read from the file and add activity and subject rows added and bound together.
1. The measurements on the mean and standard deviation (i.e. signals containing the strings `mean` and `std`) were extracted for each measurement, and the others were discarded.
1. The activity identifiers (originally coded as integers between 1 and 6) were replaced with descriptive activity names (see [Identifiers](#identifiers) section).
1. The variable names were replaced with descriptive variable names , using the following set of rules:
	- Special characters (i.e. `(`, `)`, and `-`) were removed
	- The initial `f` and `t` were expanded to `frequency` and `time` respectively.
	- `Acc` and `Gyro` were replaced with `Accelerometer`, `Gyroscope`.
1. From the data set in step 4, the final data set was created with the average of each variable for each activity and each subject.

The collection of the source data and the transformations listed above were implemented by the `run_analysis.R` R script (see `README.md` file for usage instructions).
