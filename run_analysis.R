library(dplyr)
##Download the dataset if not exists..
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
Zipname <- "UCI HAR Dataset.zip"

if (!file.exists(Zipname)) {
        download.file(fileurl,Zipname)
        unzip(Zipname)
}else {
        unzip(Zipname)
}

##set the working directory to the data set folder
setwd("./UCI HAR Dataset")

## establish connection to the files

file_x_train <- file("./train/X_train.txt")

file_y_train <- file("./train/Y_train.txt")

file_subj_train <- file("./train/subject_train.txt")

file_x_test <- file("./test/X_test.txt")

file_y_test <- file("./test/Y_test.txt")

file_subj_test <- file("./test/subject_test.txt")

file_feature <- file("./features.txt")

file_activities <- file("./activity_labels.txt")

## reading all the data sets into the workspace

x_train <- read.table(file_x_train,sep = "")

x_test <- read.table(file_x_test,sep = "")

y_train <- read.table(file_y_train,sep = " ")

y_test <- read.table(file_y_test,sep = " ")

subject_train <- read.table(file_subj_train,sep = "" )

subject_test <- read.table(file_subj_test,sep = "" )

feature_table <- read.table(file_feature,sep = " ")

feature_table[,2] = as.character(feature_table[,2])

activity_label <- read.table(file_activities,sep = " ")

## filter the required features from features table

reqfeatureVector <- grep(".*mean.*|.*std.*",feature_table[,2])

feature_table$V2 <- gsub("[\\(\\)-]","",feature_table$V2)

feature_table$V2 <- gsub("mean","Mean",feature_table$V2)

feature_table$V2 <- gsub("Freq","Frequency",feature_table$V2)

feature_table$V2 <- gsub("std","StandardDeviation",feature_table$V2)

## filter only the required columns into a separate table

x_train_req <- x_train[,reqfeatureVector]

x_test_req <- x_test[,reqfeatureVector]

##get the final training set

training_set <- cbind(subject_train,y_train,x_train_req)

##getting the final test set

test_set <- cbind(subject_test,y_test,x_test_req)

## merging the two datasets into a final one

finalMergedData <- rbind(training_set,test_set)

##adding column names to the final data set

colnames(finalMergedData) <- c("subject","activity",feature_table[reqfeatureVector,2])

## summarize the data set to get the second tidy  data set with Piping command

TidyDataTwo <- finalMergedData %>%
               group_by(subject,activity) %>%
               summarize_all(funs(mean))

write.table(TidyDataTwo,"tidyoutputtable.txt",quote = FALSE,row.names = FALSE)

