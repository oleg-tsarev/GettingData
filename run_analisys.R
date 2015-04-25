# === script preparation === #
setwd("~/Documents/3 - GettingData/project")
rm(list=ls())


# === download and unzip data folder === #
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
              ,"~/Documents/3 - GettingData/project/Dataset.zip",method = "wget")
unzip(zipfile = "~/Documents/3 - GettingData/project/Dataset.zip",overwrite = T,
      exdir = "~/Documents/3 - GettingData/project/")


# === test processing === #
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt",header=F)
features <- read.table("./UCI HAR Dataset/features.txt",header=F)
subject <- read.table("./UCI HAR Dataset/test/subject_test.txt",header=F)
activity_code <- read.table("./UCI HAR Dataset/test/y_test.txt",header=F)
right <- read.table("UCI HAR Dataset/test/X_test.txt",header=F)

left <- as.data.frame(cbind(subject[1],activity_code[1]))
names(left) <- c("subject","activity_code")
left <- merge(left,activity_labels,by.x="activity_code",by.y="V1")
names(left)[3] <- "activity_label"
left$activity_label <- as.factor(left$activity_label)
left <- left[,c(2,1,3)]
names(right) <- features$V2
right <- right[,grep("mean\\(|std\\(",names(right),value=TRUE)]
names(right) <- tolower(gsub("-",".",gsub("\\()","",names(right))))
test <- cbind(left,right)


# === train processing === #
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt",header=F)
features <- read.table("./UCI HAR Dataset/features.txt",header=F)
subject <- read.table("./UCI HAR Dataset/train/subject_train.txt",header=F)
activity_code <- read.table("./UCI HAR Dataset/train/y_train.txt",header=F)
right <- read.table("UCI HAR Dataset/train/X_train.txt",header=F)

left <- as.data.frame(cbind(subject[1],activity_code[1]))
names(left) <- c("subject","activity_code")
left <- merge(left,activity_labels,by.x="activity_code",by.y="V1")
names(left)[3] <- "activity_label"
left <- left[,c(2,1,3)]
names(right) <- features$V2
right <- right[,grep("mean\\(|std\\(",names(right),value=TRUE)]
names(right) <- tolower(gsub("-",".",gsub("\\()","",names(right))))
train <- cbind(left,right)


# === tidy processing === #
dataset <- rbind(test,train)
tidy <- dataset[,colnames(dataset) != "activity_code"]
tidy <- aggregate(tidy,by=list(tidy$subject,tidy$activity_label),FUN=mean,na.rm=T)
tidy <- tidy[,!(colnames(tidy) %in% c("subject","activity_label"))]
names(tidy)[1:2] <- c("subject","activity_label")


# === export to txt === #
rm(list=ls()[! ls() %in% c("dataset","tidy")])
write.table(tidy,"./tidy_dataset.txt",row.names=F)

