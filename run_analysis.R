library(dplyr)

filename <- "FUCI_HAR_Dataset.zip"

## Download and unzip the dataset:
if (!file.exists(filename)){
      fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
      download.file(fileURL, filename)
}  
if (!file.exists("FUCI_HAR_Dataset")) { 
      unzip(filename) 
}
setwd("UCI HAR Dataset")
train<-read.table("train/X_train.txt")
test<-read.table("test/X_test.txt")
trainLabels<-read.table("train/Y_train.txt")
testLabels<-read.table("test/Y_test.txt")
activityLabels<-read.table("activity_labels.txt")
testLabels<-transform(testLabels, V1 = activityLabels$V2[match(V1, activityLabels$V1)])
trainLabels<-transform(trainLabels, V1 = activityLabels$V2[match(V1, activityLabels$V1)])
testSubjects<-read.table("test/subject_test.txt")
trainSubjects<-read.table("train/subject_train.txt")
test<-cbind(testSubjects,testLabels, test)
train<-cbind(trainSubjects,trainLabels, train)

columns<-read.table("features.txt")
activityRow<-data.frame(V1="1", V2="Activity")
subjectRow<-data.frame(V1="0", V2="Subject")
columns<-rbind(subjectRow,activityRow, columns)

combination<-rbind(train, test)
combination<-setNames(combination, columns[1:563,2])
StdMeanColumns <-combination[grep("std|mean|Activity|Subject", names(combination), value = TRUE)]
colnames(StdMeanColumns) = gsub("^f", "Frequency", colnames(StdMeanColumns))
colnames(StdMeanColumns) = gsub("^t", "Time", colnames(StdMeanColumns))
colnames(StdMeanColumns) = gsub("Gyro", "Gyroscope", colnames(StdMeanColumns))
colnames(StdMeanColumns) = gsub("Acc", "Acceleration", colnames(StdMeanColumns))
colnames(StdMeanColumns) = gsub("[^0-9A-Za-z///' ]","" , colnames(StdMeanColumns) ,ignore.case = TRUE)

tidyData<-StdMeanColumns %>% 
      group_by(Subject, Activity) %>%
      summarise_all("mean")

write.table(tidyData, "average_per_student_activity.txt",row.names = FALSE, quote = FALSE)