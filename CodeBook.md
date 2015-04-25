# Initial Dataset:   
Human Activity Recognition Using Smartphones Data Set 

Source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.  

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.  

#Summaries and transformations performed:  

1. Test and Train datasets were created by the execution of the following steps:     
+ merge of subject and activity_code tables (simple cbind)  
+ merge current dataset with the activity_label table  
+ removing all columns except variables with the standard deviation or mean in the description  
   
2. Creating tidy dataset:  
 + merge of Test and Train datasets  
 + group current dataset by subject and activity_label, all other variables are calculated as a mean.  


#Variables:  
**subject** - subject id, integer value from 1 to 30.  
**activity_label** - description of the activity, one of the following: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING     
   
*The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.*   

*Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).*   

*These signals were used to estimate variables of the feature vector for each pattern:*  
*'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.*  
*All variables were normalized and lie in the interval from -1 to 1.*   
   
**tbodyacc.mean.x** - mean body acceleration in x dimension in time   
**tbodyacc.mean.y** - mean body acceleration in y dimension in time   
**tbodyacc.mean.z** - mean body acceleration in z dimension in time  
**tbodyacc.std.x** - standard devation of body acceleration in x dimension in time   
**tbodyacc.std.y** - standard devation of body acceleration in x dimension in time   
**tbodyacc.std.z** - standard devation of body acceleration in x dimension in time   
**tgravityacc.mean.x** - mean gravitational acceleration in x dimension in time  
**tgravityacc.mean.y** - mean gravitational acceleration in y dimension in time   
**tgravityacc.mean.z** - mean gravitational acceleration in z dimension in time   
**tgravityacc.std.x** - standard deviation of gravitational acceleration in x dimension in time   
**tgravityacc.std.y** - standard deviation of gravitational acceleration in y dimension in time   
**tgravityacc.std.z** - standard deviation of gravitational acceleration in z dimension in time   
**tbodyaccjerk.mean.x** - mean body Jerk signal acceleration in x dimension in time    
**tbodyaccjerk.mean.y** - mean body Jerk signal acceleration in y dimension in time   
**tbodyaccjerk.mean.z** - mean body Jerk signal acceleration in z dimension in time   
**tbodyaccjerk.std.x** - standard devation of body Jerk signal acceleration in x dimension in time   
**tbodyaccjerk.std.y** - standard devation of body Jerk signal acceleration in y dimension in time   
**tbodyaccjerk.std.z** - standard devation of body Jerk signal acceleration in z dimension in time   
**tbodygyro.mean.x** - mean body gyroscope figure in x dimension in time   
**tbodygyro.mean.y** - mean body gyroscope figure in y dimension in time   
**tbodygyro.mean.z** - mean body gyroscope figure in z dimension in time   
**tbodygyro.std.x** - standard deviation of body gyroscope figure in x dimension in time   
**tbodygyro.std.y** - standard deviation of body gyroscope figure in y dimension in time   
**tbodygyro.std.z** - standard deviation of body gyroscope figure in z dimension in time   
**tbodygyrojerk.mean.x** - mean body Jerk signal gyroscope figure in x dimension in time   
**tbodygyrojerk.mean.y** - mean body Jerk signal gyroscope figure in y dimension in time   
**tbodygyrojerk.mean.z** - mean body Jerk signal gyroscope figure in z dimension in time   
**tbodygyrojerk.std.x** - standard deviation of body Jerk signal gyroscope figure in x dimension in time   
**tbodygyrojerk.std.y** - standard deviation of body Jerk signal gyroscope figure in y dimension in time   
**tbodygyrojerk.std.z** - standard deviation of body Jerk signal gyroscope figure in z dimension in time   
**tbodyaccmag.mean** - magnitude of mean body acceleration in time   
**tbodyaccmag.std** - standard deviation of mean body acceleration in time   
**tgravityaccmag.mean** - magnitude of mean gravitational acceleration in time   
**tgravityaccmag.std** - standard deviation of mean gravitational acceleration in time   
**tbodyaccjerkmag.mean** - magnitude of mean Jerk signal gravitational acceleration in time   
**tbodyaccjerkmag.std** - standard deviation of mean Jerk signal gravitational acceleration in time   
**tbodygyromag.mean** - magnitude of mean gyroscope figure in time   
**tbodygyromag.std** - magnitude of standard deviation gyroscope figure in time   
**tbodygyrojerkmag.mean** - magnitude of mean gyroscope Jerk signal figure in time   
**tbodygyrojerkmag.std** - magnitude of standard deviation gyroscope Jerk signal figure in time   
**fbodyacc.mean.x** - mean body acceleration in x dimension in frequency   
**fbodyacc.mean.y** - mean body acceleration in y dimension in frequency   
**fbodyacc.mean.z** - mean body acceleration in z dimension in frequency   
**fbodyacc.std.x** - standard devation of body acceleration in x dimension in frequency   
**fbodyacc.std.y** - standard devation of body acceleration in y dimension in frequency   
**fbodyacc.std.z** - standard devation of body acceleration in z dimension in frequency   
**fbodyaccjerk.mean.x** - mean body Jerk signal acceleration in x dimension in frequency   
**fbodyaccjerk.mean.y** - mean body Jerk signal acceleration in y dimension in frequency   
**fbodyaccjerk.mean.z** - mean body Jerk signal acceleration in z dimension in frequency   
**fbodyaccjerk.std.x** - standard devation of body Jerk signal acceleration in x dimension in frequency   
**fbodyaccjerk.std.y** - standard devation of body Jerk signal acceleration in y dimension in frequency   
**fbodyaccjerk.std.z** - standard devation of body Jerk signal acceleration in z dimension in frequency   
**fbodygyro.mean.x** - mean body gyroscope figure in x dimension in frequency   
**fbodygyro.mean.y** - mean body gyroscope figure in y dimension in frequency   
**fbodygyro.mean.z** - mean body gyroscope figure in z dimension in frequency   
**fbodygyro.std.x** - standard deviation of body gyroscope figure in x dimension in frequency   
**fbodygyro.std.y** - standard deviation of body gyroscope figure in y dimension in frequency   
**fbodygyro.std.z** - standard deviation of body gyroscope figure in z dimension in frequency   
**fbodyaccmag.mean** - magnitude of mean body acceleration in frequency   
**fbodyaccmag.std** - magnitude of standard deviation of body acceleration in frequency   
**fbodybodyaccjerkmag.mean** - mean body Jerk signal body acceleration in frequency   
**fbodybodyaccjerkmag.std** - standard deviation of body Jerk signal body acceleration in frequency    
**fbodybodygyromag.mean** - body magnitude of mean body acceleration in frequency   
**fbodybodygyromag.std** - body magnitude of standard deviation of body acceleration in frequency   
**fbodybodygyrojerkmag.mean** - body magnitude of mean gyroscope Jerk signal figure in frequency   
**fbodybodygyrojerkmag.std** - body magnitude of standard deviation of gyroscope Jerk signal figure in frequency   

