# Human Activity Recognition Using Smartphones Dataset Analysis

This repository contains an R script, `run_analysis.R`, which processes and tidies data from the [UCI HAR Dataset](https://archive.ics.uci.edu/ml/datasets/human+activity+recognition+using+smartphones). The dataset includes data collected from smartphone accelerometers, which measure the movements of 30 individuals performing various activities. The script merges, filters, labels, and reshapes this data to provide a tidy summary dataset of mean values by subject and activity.

## Dataset

The data used in this analysis is available here: [UCI HAR Dataset](https://archive.ics.uci.edu/ml/datasets/human+activity+recognition+using+smartphones). This dataset should be downloaded and unzipped in the working directory if not already present.

## Script: `run_analysis.R`

This R script performs the following steps:

1. **Download and Unzip Data**  
   The script downloads and unzips the dataset if it’s not already present in the working directory.

2. **Merge Training and Test Sets**  
   Combines the training and test datasets for subjects, activities, and measurements into one dataset.

3. **Extract Mean and Standard Deviation Measurements**  
   Filters the dataset to keep only the measurements on mean (`mean()`) and standard deviation (`std()`).

4. **Apply Descriptive Activity Names**  
   Replaces activity codes with descriptive names such as "WALKING" and "SITTING" based on `activity_labels.txt`.

5. **Label Dataset with Descriptive Variable Names**  
   Cleans up variable names to make them more readable by removing symbols and expanding abbreviations.

6. **Create a Second Tidy Dataset with Averages**  
   Generates a final tidy dataset containing the average of each measurement for each activity and each subject. This dataset is saved as `tidy_data.txt`.

### Output

- **`tidy_data.txt`**: A tidy dataset with the average of each variable for each activity and each subject.

## Requirements

- **R** with **dplyr** package

Install dplyr if needed:
```R
install.packages("dplyr")
 ```
## Usage

### Clone the Repository

```bash
git clone https://github.com/your-username/your-repo-name.git
cd your-repo-name
```

## Run the Script
```bash
Rscript run_analysis.R
```
## Output
The tidy data will be saved as **`tidy_data.txt`** in the working directory.

