#first download the data and unzip, then set the working directory
setwd("D:/datasciencecoursera/UCI HAR Dataset/")

#read in training data and combine
trainData<-read.table("train/X_train.txt")
trainSubject<-read.table("train/subject_train.txt")
trainActivity<-read.table("train/Y_train.txt")
combinedtrainData<-cbind(trainData,trainSubject,trainActivity)

#read in test data and combine
testData<-read.table("test/X_test.txt")
testSubject<-read.table("test/subject_test.txt")
testActivity<-read.table("test/Y_test.txt")
combinedtestData<-cbind(testData,testSubject,testActivity)

#combine training and test data
combinedData<-rbind(combinedtrainData,combinedtestData)

#read in features from features.txt, and assign to column titles
features<-read.table("features.txt")
colNames<-c(as.character(features[,2]),"Activity","Subject")
names(combinedData)<-colNames

#extract only the only the measurements on the mean and standard deviation for each measurement
#gets the indexes of columns with "-mean()" or "-std()" in them
colsExtract<-grep("[-]std[(][)]|[-]mean[(][)]",colNames)
combinedData<-combinedData[,c(colsExtract,562:563)]

#Uses descriptive activity names to name the activities in the data set
activityLabels<-read.table("activity_labels.txt")
names(activityLabels)<-c("Activity","ActivityName")
mergeData<-merge(combinedData,activityLabels,sort=F)

#Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
aggregateData<-aggregate(.~Subject+ActivityName, FUN=mean, data=mergeData)
write.table(aggregateData,file="tidyData.csv")