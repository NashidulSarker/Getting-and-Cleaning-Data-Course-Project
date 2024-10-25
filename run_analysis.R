# Load necessary library
library(dplyr)

# Step 0: Download and unzip the dataset if it hasn't been already
if (!file.exists("UCI HAR Dataset")) {
  url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(url, destfile = "dataset.zip")
  unzip("dataset.zip")
}

# Step 1: Merge the training and the test sets to create one data set

# Load training and test datasets
train_data <- read.table("UCI HAR Dataset/train/X_train.txt")
train_labels <- read.table("UCI HAR Dataset/train/y_train.txt")
train_subjects <- read.table("UCI HAR Dataset/train/subject_train.txt")

test_data <- read.table("UCI HAR Dataset/test/X_test.txt")
test_labels <- read.table("UCI HAR Dataset/test/y_test.txt")
test_subjects <- read.table("UCI HAR Dataset/test/subject_test.txt")

# Merge the datasets
merged_data <- rbind(train_data, test_data)
merged_labels <- rbind(train_labels, test_labels)
merged_subjects <- rbind(train_subjects, test_subjects)

# Load features and assign them as column names to the merged data
features <- read.table("UCI HAR Dataset/features.txt")
colnames(merged_data) <- features$V2

# Step 2: Extract only the measurements on the mean and standard deviation for each measurement

# Identify columns with mean and standard deviation
mean_std_columns <- grepl("mean\\(\\)|std\\(\\)", features$V2)
mean_std_data <- merged_data[, mean_std_columns]

# Step 3: Use descriptive activity names to name the activities in the data set

# Load activity labels
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
merged_labels$Activity <- factor(merged_labels$V1, levels = activity_labels$V1, labels = activity_labels$V2)

# Step 4: Appropriately label the data set with descriptive variable names

# Update column names for the selected data
colnames(mean_std_data) <- gsub("\\()", "", colnames(mean_std_data)) # Remove parentheses
colnames(mean_std_data) <- gsub("^t", "Time", colnames(mean_std_data)) # Prefix "Time"
colnames(mean_std_data) <- gsub("^f", "Frequency", colnames(mean_std_data)) # Prefix "Frequency"
colnames(mean_std_data) <- gsub("Acc", "Accelerometer", colnames(mean_std_data))
colnames(mean_std_data) <- gsub("Gyro", "Gyroscope", colnames(mean_std_data))
colnames(mean_std_data) <- gsub("Mag", "Magnitude", colnames(mean_std_data))
colnames(mean_std_data) <- gsub("BodyBody", "Body", colnames(mean_std_data))

# Combine subject, activity, and mean/std data into one dataset
tidy_data <- cbind(Subject = merged_subjects$V1, Activity = merged_labels$Activity, mean_std_data)

# Step 5: Create a second, independent tidy data set with the average of each variable for each activity and each subject

# Calculate the mean of each variable per subject and activity
final_data <- tidy_data %>%
  group_by(Subject, Activity) %>%
  summarise_all(list(mean = ~ mean(.)))

# Write the final tidy dataset to a file
write.table(final_data, "tidy_data.txt", row.names = FALSE)

