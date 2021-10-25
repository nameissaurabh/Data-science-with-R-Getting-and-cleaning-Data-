Getting and Cleaning Data - Course Project
==========================================
## The original data transformed with:

* Merging the training and the test sets to create one data set.
* Extracting only the measurements on the mean and standard deviation for each measurement.
* Useing descriptive activity names to name the activities in the data set
* Appropriately labeling the data set with descriptive variable names.
* Creating a second, independent tidy data set with the average of each variable for each activity and each subject.


# Data set Descriptions
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS,
WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial
linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has 
been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec 
and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth 
low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff 
frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


## Identifiers
The first two columns - Subject and Activity - are Identifiers.
* Subject: the ID of the Subject
* Activity: the Name of the Activity performed by the subject when measurements were taken

## Features  

 [1]"subject"                                           
 [2] "activity"                                          
 [3] "TimeBodyAccelerometer.Mean...X"                    
 [4] "TimeBodyAccelerometer.Mean...Y"                    
 [5] "TimeBodyAccelerometer.Mean...Z"                    
 [6] "TimeGravityAccelerometer.Mean...X"                 
 [7] "TimeGravityAccelerometer.Mean...Y"                 
 [8] "TimeGravityAccelerometer.Mean...Z"                 
 [9] "TimeBodyAccelerometerJerk.Mean...X"                
[10] "TimeBodyAccelerometerJerk.Mean...Y"                
[11] "TimeBodyAccelerometerJerk.Mean...Z"                
[12] "TimeBodyGyroscope.Mean...X"                        
[13] "TimeBodyGyroscope.Mean...Y"                        
[14] "TimeBodyGyroscope.Mean...Z"                        
[15] "TimeBodyGyroscopeJerk.Mean...X"                    
[16] "TimeBodyGyroscopeJerk.Mean...Y"                    
[17] "TimeBodyGyroscopeJerk.Mean...Z"                    
[18] "TimeBodyAccelerometerMagnitude.Mean.."             
[19] "TimeGravityAccelerometerMagnitude.Mean.."          
[20] "TimeBodyAccelerometerJerkMagnitude.Mean.."         
[21] "TimeBodyGyroscopeMagnitude.Mean.."                 
[22] "TimeBodyGyroscopeJerkMagnitude.Mean.."             
[23] "FrequencyBodyAccelerometer.Mean...X"               
[24] "FrequencyBodyAccelerometer.Mean...Y"               
[25] "FrequencyBodyAccelerometer.Mean...Z"               
[26] "FrequencyBodyAccelerometer.MeanFreq...X"           
[27] "FrequencyBodyAccelerometer.MeanFreq...Y"           
[28] "FrequencyBodyAccelerometer.MeanFreq...Z"           
[29] "FrequencyBodyAccelerometerJerk.Mean...X"           
[30] "FrequencyBodyAccelerometerJerk.Mean...Y"           
[31] "FrequencyBodyAccelerometerJerk.Mean...Z"           
[32] "FrequencyBodyAccelerometerJerk.MeanFreq...X"       
[33] "FrequencyBodyAccelerometerJerk.MeanFreq...Y"       
[34] "FrequencyBodyAccelerometerJerk.MeanFreq...Z"       
[35] "FrequencyBodyGyroscope.Mean...X"                   
[36] "FrequencyBodyGyroscope.Mean...Y"                   
[37] "FrequencyBodyGyroscope.Mean...Z"                   
[38] "FrequencyBodyGyroscope.MeanFreq...X"               
[39] "FrequencyBodyGyroscope.MeanFreq...Y"               
[40] "FrequencyBodyGyroscope.MeanFreq...Z"               
[41] "FrequencyBodyAccelerometerMagnitude.Mean.."        
[42] "FrequencyBodyAccelerometerMagnitude.MeanFreq.."    
[43] "FrequencyBodyAccelerometerJerkMagnitude.Mean.."    
[44] "FrequencyBodyAccelerometerJerkMagnitude.MeanFreq.."
[45] "FrequencyBodyGyroscopeMagnitude.Mean.."            
[46] "FrequencyBodyGyroscopeMagnitude.MeanFreq.."        
[47] "FrequencyBodyGyroscopeJerkMagnitude.Mean.."        
[48] "FrequencyBodyGyroscopeJerkMagnitude.MeanFreq.."    
[49] "Angle.TimeBodyAccelerometerMean.Gravity."          
[50] "Angle.TimeBodyAccelerometerJerkMean..GravityMean." 
[51] "Angle.TimeBodyGyroscopeMean.GravityMean."          
[52] "Angle.TimeBodyGyroscopeJerkMean.GravityMean."      
[53] "Angle.X.GravityMean."                              
[54] "Angle.Y.GravityMean."                              
[55] "Angle.Z.GravityMean."                              
[56] "TimeBodyAccelerometer.STD...X"                     
[57] "TimeBodyAccelerometer.STD...Y"                     
[58] "TimeBodyAccelerometer.STD...Z"                     
[59] "TimeGravityAccelerometer.STD...X"                  
[60] "TimeGravityAccelerometer.STD...Y"                  
[61] "TimeGravityAccelerometer.STD...Z"                  
[62] "TimeBodyAccelerometerJerk.STD...X"                 
[63] "TimeBodyAccelerometerJerk.STD...Y"                 
[64] "TimeBodyAccelerometerJerk.STD...Z"                 
[65] "TimeBodyGyroscope.STD...X"                         
[66] "TimeBodyGyroscope.STD...Y"                         
[67] "TimeBodyGyroscope.STD...Z"                         
[68] "TimeBodyGyroscopeJerk.STD...X"                     
[69] "TimeBodyGyroscopeJerk.STD...Y"                     
[70] "TimeBodyGyroscopeJerk.STD...Z"                     
[71] "TimeBodyAccelerometerMagnitude.STD.."              
[72] "TimeGravityAccelerometerMagnitude.STD.."           
[73] "TimeBodyAccelerometerJerkMagnitude.STD.."          
[74] "TimeBodyGyroscopeMagnitude.STD.."                  
[75] "TimeBodyGyroscopeJerkMagnitude.STD.."              
[76] "FrequencyBodyAccelerometer.STD...X"                
[77] "FrequencyBodyAccelerometer.STD...Y"                
[78] "FrequencyBodyAccelerometer.STD...Z"                
[79] "FrequencyBodyAccelerometerJerk.STD...X"            
[80] "FrequencyBodyAccelerometerJerk.STD...Y"            
[81] "FrequencyBodyAccelerometerJerk.STD...Z"            
[82] "FrequencyBodyGyroscope.STD...X"                    
[83] "FrequencyBodyGyroscope.STD...Y"                    
[84] "FrequencyBodyGyroscope.STD...Z"                    
[85] "FrequencyBodyAccelerometerMagnitude.STD.."         
[86] "FrequencyBodyAccelerometerJerkMagnitude.STD.."     
[87] "FrequencyBodyGyroscopeMagnitude.STD.."             
[88] "FrequencyBodyGyroscopeJerkMagnitude.STD.." 
