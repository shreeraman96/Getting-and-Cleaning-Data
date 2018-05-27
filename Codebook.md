# CODE BOOK

The code book contains the required information about the variables in the output dataset in the "tidyoutputtable.txt"
(Refer the README.md file on how to obtain this output file)

## Tidy Output table
	* The tidyoutputtable text file contains the required final output data that was obtained from the raw data.
	* The first row contains the variables names.
	* The dimensions of the table 180 * 81 
	
## Key identifiers
	  * **Subject** : Test subject ID - ranges from (1,30)
	  * **Acitivity** : The activity performed by the test subject

## Activity labels
	  * 1 WALKING 
	  * 2 WALKING_UPSTAIRS
      * 3 WALKING_DOWNSTAIRS
	  * 4 SITTING
	  * 5 STANDING
	  * 6 LAYING
	  
## Measurement Variables
####	 Mean variables (Time domain)
		  * tBodyAccMeanX
		  * tBodyAccMeanY
		  * tBodyAccMeanZ 
		  * tGravityAccMeanX 
		  * tGravityAccMeanY 
		  * tGravityAccMeanZ
		  * tBodyAccJerkMeanX 
		  * tBodyAccJerkMeanY 
		  * tBodyAccJerkMeanZ
		  * tBodyGyroMeanX 
		  * tBodyGyroMeanY 
		  * tBodyGyroMeanZ
		  * tBodyGyroJerkMeanX 
		  * tBodyGyroJerkMeanY 
		  * tBodyGyroJerkMeanZ
		  * tBodyAccMagMean 
		  * tGravityAccMagMean 
		  * tBodyAccJerkMagMean 
		  * tBodyGyroMagMean 
		  * tBodyGyroJerkMagMean 

#### 	Mean variables (Frequency domain)
		  * fBodyAccMeanX 
		  * fBodyAccMeanY 
		  * fBodyAccMeanZ 
		  * fBodyAccMeanFrequencyX 
		  * fBodyAccMeanFrequencyY 
		  * fBodyAccMeanFrequencyZ 
		  * fBodyAccJerkMeanX 
		  * fBodyAccJerkMeanY 
		  * fBodyAccJerkMeanZ 
		  * fBodyAccJerkMeanFrequencyX 
		  * fBodyAccJerkMeanFrequencyY 
		  * fBodyAccJerkMeanFrequencyZ 
		  * fBodyGyroMeanX 
		  * fBodyGyroMeanY 
		  * fBodyGyroMeanZ 
		  * fBodyGyroMeanFrequencyX 
		  * fBodyGyroMeanFrequencyY 
		  * fBodyGyroMeanFrequencyZ 
		  * fBodyAccMagMean 
		  * fBodyBodyAccJerkMagMean 
		  * fBodyAccMagMeanFrequency 
		  * fBodyBodyAccJerkMagMeanFrequency 
		  * fBodyBodyGyroMagMean 
		  
#### 	Standard Deviation variables (Time domain)
		  * tBodyAccStandardDeviationX 
		  * tBodyAccStandardDeviationY 
		  * tBodyAccStandardDeviationZ 
		  * tGravityAccStandardDeviationX 
		  * tGravityAccStandardDeviationY 
		  * tGravityAccStandardDeviationZ 
		  * tBodyAccJerkStandardDeviationX 
		  * tBodyAccJerkStandardDeviationY 
		  * tBodyAccJerkStandardDeviationZ 
		  * tBodyGyroStandardDeviationX 
		  * tBodyGyroStandardDeviationY 
		  * tBodyGyroStandardDeviationZ 
		  * tBodyGyroJerkStandardDeviationX 
		  * tBodyGyroJerkStandardDeviationY 
		  * tBodyGyroJerkStandardDeviationZ 
		  * tBodyAccMagStandardDeviation 
		  * tGravityAccMagStandardDeviation 
		  * tBodyAccJerkMagStandardDeviation 
		  * tBodyGyroMagStandardDeviation 
		  * tBodyGyroJerkMagStandardDeviation 

#### 	Standard Deviation variables (Frequency domain)
		  * fBodyAccStandardDeviationX 
		  * fBodyAccStandardDeviationY 
		  * fBodyAccStandardDeviationZ 
		  * fBodyAccJerkStandardDeviationX 
		  * fBodyAccJerkStandardDeviationY 
		  * fBodyAccJerkStandardDeviationZ 
		  * fBodyGyroStandardDeviationX 
		  * fBodyGyroStandardDeviationY 
		  * fBodyGyroStandardDeviationZ 
		  * fBodyAccMagStandardDeviation 
		  * fBodyBodyAccJerkMagStandardDeviation 
		  * fBodyBodyGyroMagStandardDeviation 
		  * fBodyBodyGyroMagMeanFrequency 
		  * fBodyBodyGyroJerkMagMean 
		  * fBodyBodyGyroJerkMagStandardDeviation 
		  * fBodyBodyGyroJerkMagMeanFrequency
	
## Summary choices
	The table is the output obtained after grouping the final merged raw data based on Subject and Activity and each summarized based on Mean function

#### NOTE : To know more about how the data has been extracted please read the README.md file
	