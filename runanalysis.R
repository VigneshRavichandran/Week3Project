runanalysis <- function(){

x_test <- read.table("G:/R Programming/Week 3 -Getting and Cleaning data/UCI HAR Dataset/test/x_test.txt")
y_test <- read.table("G:/R Programming/Week 3 -Getting and Cleaning data/UCI HAR Dataset/test/y_test.txt")
x_train <- read.table("G:/R Programming/Week 3 -Getting and Cleaning data/UCI HAR Dataset/train/x_train.txt")
y_train <- read.table("G:/R Programming/Week 3 -Getting and Cleaning data/UCI HAR Dataset/train/y_train.txt")
subject_test <- read.table("G:/R Programming/Week 3 -Getting and Cleaning data/UCI HAR Dataset/test/subject_test.txt")
subject_test <- read.table("G:/R Programming/Week 3 -Getting and Cleaning data/UCI HAR Dataset/test/subject_test.txt")



columnnames <- read.table("G:/R Programming/Week 3 -Getting and Cleaning data/UCI HAR Dataset/features.txt",sep=' ')
colnames(x_test) <- columnnames[,2]
colnames(x_train) <- columnnames[,2]
colnames(y_test) <- "activity"
colnames(y_train) <- "activity"
colnames(subject_test) <- "subject"
colnames(subject_train) <- "subject"



Testdata <- cbind(x_test,y_test,subject_test)



Traindata <- cbind(x_train,y_train,subject_train)


Mergeddata <- rbind(Testdata,Traindata)

Mergeddata <- as.data.frame(Mergeddata)


meansdcolumns <- cbind(Mergeddata[grep("-std",colnames (Mergeddata))],Mergeddata[grep("-mean",colnames (Mergeddata))])


Mergeddata$"activity"[Mergeddata$"activity"==6] <-  "LAYING"
Mergeddata$"activity"[Mergeddata$"activity"==5] <-  "STANDING"
Mergeddata$"activity"[Mergeddata$"activity"==4] <-  "SITTING"
Mergeddata$"activity"[Mergeddata$"activity"==3] <-  "WALKING_DOWNSTAIRS"
Mergeddata$"activity"[Mergeddata$"activity"==2] <-  "WALKING_UPSTAIRS"
Mergeddata$"activity"[Mergeddata$"activity"==1] <-  "WALKING"



formatnames <- tolower(colnames(Mergeddata))
formatnames <- gsub("-","",formatnames)
formatnames <- gsub(" ","",formatnames)



library(reshape2)

MergeddataMelt <- melt(Mergeddata,id=c ("subject","activity"),na.rm=TRUE)

FinalData <- dcast(MergeddataMelt,formula= subject+activity ~ variable,mean,na.rm=TRUE)

write.table(FinalData,"G:/R Programming/Week 3 -Getting and Cleaning data/UCI HAR Dataset/tidydata.txt",sep=" ",eol="\n",row.names=FALSE)
}
