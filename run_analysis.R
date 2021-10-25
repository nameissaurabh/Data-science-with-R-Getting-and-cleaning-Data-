#getting and storing data
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
name <- "Getting and cleaning data course project"
download.file(url,name)#,method="curl")
if(!file.exists("UCI HAR Dataset")){
        unzip(name)
}
features<-read.table("UCI HAR Dataset/features.txt",col.names = c("n","functions"))
activities <- read.table("UCI HAR Dataset/activity_labels.txt",col.names = c("code","activity"))
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt",col.names = "subject")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt",col.names = feature$functions)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt",col.names = "code")
subject_train<- read.table("UCI HAR Dataset/train/subject_train.txt",col.names = "subject")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt",col.names = feature$functions)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt",col.names = "code")
#1)Merging the training and the test sets to create one data set
data_X <- rbind(x_train,x_test)
data_y <- rbind(y_train,y_test)
subject <- rbind(subject_train,subject_test)
final_data <- cbind(subject,data_X,data_y)
dt  <- tbl_df(final_data)
#2)Extracts only the measurements on the mean and std for each measurement
dt1 <- select(dt,subject,code,contains("mean"),contains("std"))#here select will Extracts only 
#the measurements on the mean and std for each measurement along with column subject & code
#3)Uses descriptive activity names to name the activities in the data set
dt1$code <- activities[dt1$code,2]
#4)Appropriately labels the data set with descriptive variable names
names(dt1)[2] <- "activity"
names(dt1) <- gsub("Acc","Accelerometer",names(dt1))
names(dt1) <- gsub("Gyro","Gyroscope",names(dt1))
names(dt1) <- gsub("BodyBody","Body",names(dt1))
names(dt1) <- gsub("Mag","Magnitude",names(dt1))
names(dt1) <- gsub("^t","Time",names(dt1))
names(dt1) <- gsub("^f","Frequency",names(dt1))
names(dt1) <- gsub("tBody","TimeBody",names(dt1))
names(dt1) <- gsub("mean()","Mean",names(dt1),ignore.case=TRUE)
names(dt1) <- gsub("std()","STD",names(dt1),ignore.case=TRUE)
names(dt1) <- gsub("-freq()","Frequency",names(dt1),ignore.case =TRUE)
names(dt1) <- gsub("angle","Angle",names(dt1))
names(dt1) <- gsub("gravity","Gravity",names(dt1))
#5)From the data set in step 4, creates a second, independent tidy data set with the 
#average of each variable for each activity and each subject.
ind_data <- dt1 %>% group_by(subject,activity) %>%  summarise_all(funs(mean))
write.table(ind_data,"Extracted_independent_data.txt",row.names = FALSE)
