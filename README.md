# Getting and Cleaning Data Course Project   
*Coursera / Data Science Specialization / Getting Data*  

One of the most exciting areas in all of data science right now is wearable computing.  
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users.  
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)  

But actually this dataset consists of many folders and files and it is not very convenient for usage.  
Therefore the objective of this project is to create a tidy dataset which we can use for the exploratory analysis.

The script "run_analysis.R" performing all transformations: merge of the test and train datasets, incorporation of the activity labels, aggregation of mean and standard deviation of variables by subject and activity.  
In this script, working direcory is already defined ("~/Documents/3 - GettingData/project"), of course it can be easily changed.  
Script download and extract datasets in this folder and also creates tidy dataset there: tidy_dataset.txt.

Finally you can use tidy_dataset in order to explore something new in wearable computing sphere!

Thank you for your attention!