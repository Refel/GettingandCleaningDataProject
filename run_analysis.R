msub <- function(pattern, replacement, x, ...) {
        result <- x
        for (i in 1:length(pattern)) {
                result <- sub(pattern[i], replacement[i], result,fixed = TRUE, ...)
        }
        result
}


PathBase ="."
PathTrain= paste(PathBase,"train",sep="/")
PathTest= paste(PathBase,"test",sep="/")
MeanFile = paste(PathBase,"Join.txt",sep="/")
setwd(PathBase)

# Read the names of the diferent functions
# Search those with that calculates the mean and std
# Change the name into a more understandeble name
Xnames<-read.table("features.txt")
XnamesMean<- subset(Xnames,grepl ('mean()',Xnames[,2],fixed=TRUE))
XnamesStd<- subset(Xnames,grepl ('std()',Xnames[,2],fixed=TRUE))
Xnames<-rbind(XnamesMean,XnamesStd)
Xnames[,3]<-Xnames[,2]
From<- c("-","-","tBody","tGravity","fBody","Body","Gyro","mean()","std()","Jerk","Acc","Mag")
To <- c("","","Time body ","Time gravity ","Frequency body ","body ","gyroscope ","mean value ","standard deviation ","jerk ","accelerometer ","mag ")
Xnames[,3]<-msub(From, To, Xnames[,3])


#Read and join all train data where Strain contains the subjetdata and Ytrain contains the activity
train<-read.table(paste(PathTrain,"X_train.txt",sep="/"))
train<-train[,Xnames[,1]]       #Filter the columns with  Xnames
colnames(train)<-Xnames[,3]
Strain<-read.table(paste(PathTrain,"subject_train.txt",sep="/"))
colnames(Strain)<- "Subject"
Ytrain<-read.table(paste(PathTrain,"y_train.txt",sep="/"))
colnames(Ytrain)<- "Activity"
train<- cbind(Strain,Ytrain,train)
# train<- cbind("Train",Strain,Ytrain,train)
# colnames(train)[1]<-"Test or Training"


#Read and join all test data
#Stest contains the subjetdata
#Ytest contains the activity
test<-read.table(paste(PathTest,"X_test.txt",sep="/"))
test<-test[,Xnames[,1]]       #Filter the columns with  Xnames
colnames(test)<-Xnames[,3]
Stest<-read.table(paste(PathTest,"subject_test.txt",sep="/"))
colnames(Stest)<- "Subject"
Ytest<-read.table(paste(PathTest,"y_test.txt",sep="/"))
colnames(Ytest)<- "Activity"

test<- cbind(Stest,Ytest,test)
# test<- cbind("Test",Stest,Ytest,test)
# colnames(test)[1]<-"Test or Training"


JoinData<-rbind(test,train)

library(plyr)
MeanData <- aggregate(. ~ Subject + Activity, data=JoinData, FUN = mean)

#load activity names
activity_labels <- read.table(paste(PathBase,"activity_labels.txt",sep="/"))

MeanData$Activity <- factor(MeanData$Activity, labels=activity_labels[,2])

write.table(MeanData,MeanFile,sep = "  ",col.names = FALSE)
