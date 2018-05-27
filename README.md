# Getting-and-Cleaning-Data Course Project - overview

## The project repository includes the following files
	* A readme "README.md" file that gives an overview of the project
	* A "Codebook.md" is a codebook that includes information about the variables in the DataSet
	* An R script "run_analysis.R" which extracts the required tidy dataset and writes the table into a text document
	* A text document "tidyoutputtable.txt" which contains the tidy dataset required.

## Note:
	* The following package is required to be installed before the script is executed - "dplyr"
	
## How it works!!!
	* The required packages will loaded into the workspace initially
	* The raw dataset will be downloaded from the internet if not exists and connections to the required files will be established
	* All the required file and data from the raw dataset will be read and stored in separate variables
	* The required features will be filtered from the features data and the corresponding columns from the training and test data table will be filtered out
	* Final training and test data table is obtained by column binding the subject and activity column with the x_train and x_test data table correspondingly.
	* The training and test data table obtained after column binding is then merged into a single data table "finalmergeddata" by using row binding.
	* Descriptive column names are then added to the merged data table 
	* the column names are then made tidy by removing the special characters and removing the abbreviations and substituting them with the corresponding expansions
	* The final tidy data is then obtained by grouping the finalmergeddata table based on "subject" and "activity" and the summarizing each variable with the mean function.
	* the final tidy data obtained is then written into a text document "tidyoutputtable.txt"