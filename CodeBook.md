# Code Book for `tidy_data.txt`

This document describes the variables in `tidy_data.txt`, a tidy dataset created from the UCI HAR Dataset. The file contains the average of each selected measurement for each activity and each subject.

## Variables

### Identifiers

- **Subject**: An integer denoting the ID of the subject (range: 1 to 30).
- **Activity**: A factor variable with six levels, describing the type of activity performed by the subject:
  - `WALKING`
  - `WALKING_UPSTAIRS`
  - `WALKING_DOWNSTAIRS`
  - `SITTING`
  - `STANDING`
  - `LAYING`

### Measurement Variables

Each measurement variable represents the average value of a time or frequency domain signal recorded during the experiment. The values are normalized and bounded within [-1, 1].

All measurement variables are averages of original measurements for each subject-activity combination and follow the naming convention below:

#### Time Domain Signals (prefix `Time`)

- **TimeBodyAccelerometerMeanX/Y/Z**: Mean of body acceleration in the X, Y, Z directions.
- **TimeBodyAccelerometerStdX/Y/Z**: Standard deviation of body acceleration in the X, Y, Z directions.
- **TimeGravityAccelerometerMeanX/Y/Z**: Mean of gravity acceleration in the X, Y, Z directions.
- **TimeGravityAccelerometerStdX/Y/Z**: Standard deviation of gravity acceleration in the X, Y, Z directions.
- **TimeBodyAccelerometerJerkMeanX/Y/Z**: Mean of jerk signals (body linear acceleration derivative) in X, Y, Z directions.
- **TimeBodyAccelerometerJerkStdX/Y/Z**: Standard deviation of jerk signals in X, Y, Z directions.
- **TimeBodyGyroscopeMeanX/Y/Z**: Mean of body gyroscope measurements in X, Y, Z directions.
- **TimeBodyGyroscopeStdX/Y/Z**: Standard deviation of body gyroscope measurements in X, Y, Z directions.
- **TimeBodyGyroscopeJerkMeanX/Y/Z**: Mean of gyroscope jerk signals in X, Y, Z directions.
- **TimeBodyGyroscopeJerkStdX/Y/Z**: Standard deviation of gyroscope jerk signals in X, Y, Z directions.
- **TimeBodyAccelerometerMagnitudeMean**: Mean magnitude of body acceleration.
- **TimeBodyAccelerometerMagnitudeStd**: Standard deviation of body acceleration magnitude.
- **TimeGravityAccelerometerMagnitudeMean**: Mean magnitude of gravity acceleration.
- **TimeGravityAccelerometerMagnitudeStd**: Standard deviation of gravity acceleration magnitude.
- **TimeBodyAccelerometerJerkMagnitudeMean**: Mean magnitude of body acceleration jerk.
- **TimeBodyAccelerometerJerkMagnitudeStd**: Standard deviation of body acceleration jerk magnitude.
- **TimeBodyGyroscopeMagnitudeMean**: Mean magnitude of gyroscope signals.
- **TimeBodyGyroscopeMagnitudeStd**: Standard deviation of gyroscope signals magnitude.
- **TimeBodyGyroscopeJerkMagnitudeMean**: Mean magnitude of gyroscope jerk signals.
- **TimeBodyGyroscopeJerkMagnitudeStd**: Standard deviation of gyroscope jerk signals magnitude.

#### Frequency Domain Signals (prefix `Frequency`)

- **FrequencyBodyAccelerometerMeanX/Y/Z**: Mean frequency domain signal of body acceleration in X, Y, Z directions.
- **FrequencyBodyAccelerometerStdX/Y/Z**: Standard deviation of frequency domain body acceleration in X, Y, Z directions.
- **FrequencyBodyAccelerometerJerkMeanX/Y/Z**: Mean frequency domain jerk signal in X, Y, Z directions.
- **FrequencyBodyAccelerometerJerkStdX/Y/Z**: Standard deviation of frequency domain jerk signals in X, Y, Z directions.
- **FrequencyBodyGyroscopeMeanX/Y/Z**: Mean frequency domain gyroscope signal in X, Y, Z directions.
- **FrequencyBodyGyroscopeStdX/Y/Z**: Standard deviation of frequency domain gyroscope signal in X, Y, Z directions.
- **FrequencyBodyAccelerometerMagnitudeMean**: Mean frequency domain magnitude of body acceleration.
- **FrequencyBodyAccelerometerMagnitudeStd**: Standard deviation of frequency domain body acceleration magnitude.
- **FrequencyBodyAccelerometerJerkMagnitudeMean**: Mean frequency domain magnitude of jerk signals.
- **FrequencyBodyAccelerometerJerkMagnitudeStd**: Standard deviation of frequency domain jerk signals magnitude.
- **FrequencyBodyGyroscopeMagnitudeMean**: Mean frequency domain magnitude of gyroscope signals.
- **FrequencyBodyGyroscopeMagnitudeStd**: Standard deviation of frequency domain gyroscope signals magnitude.
- **FrequencyBodyGyroscopeJerkMagnitudeMean**: Mean frequency domain magnitude of gyroscope jerk signals.
- **FrequencyBodyGyroscopeJerkMagnitudeStd**: Standard deviation of frequency domain gyroscope jerk signals magnitude.

### Notes

- Each variable above is a summary statistic (mean) for a given subject and activity.
- The names follow the pattern:
  - **Domain (Time or Frequency)**: Indicates if the measurement is in the time or frequency domain.
  - **Signal (BodyAccelerometer, GravityAccelerometer, etc.)**: Specifies the sensor and the measurement type.
  - **Calculation (Mean or Std)**: Specifies whether it’s a mean or standard deviation.
  - **Axis (X, Y, Z)**: If applicable, specifies the axis of measurement.
  
This dataset provides a compact, tidy version of the raw data from the UCI HAR Dataset by summarizing each feature’s mean for every subject-activity pair.
