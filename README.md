
# How the script works and the
The script reads two sets of data:
######First the test set formed by three files
  X_test.txt, y_text.txt, subject_test.txt,
######Second the training set formed also by three files
  X_train, y_train, subject_train
  
Gets the names of the column data from the file features.txt

Merges all the information of all this files and filter the columns that have inforatión of mean and standar deviation
changes the names to a more descriptive ones to descrive the data set

Calculates the mean of all the the measures filtering each "Subjet" and each "Activity", and writes the resutl in a file called means.txt

In the file ColNames.txt there is the name of the data set

# Code book describing the variables

All the data in the from columns 3 is calutated as the mean of each variable grouping by Subject and Activity
Subjetc is a number representing on of the 30 volunters

- The original data comes from the UCI machine lerning and intelligent System
- http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
- Aditional information can be found in Readme.txt, features_info.txt, features.txt, and activity_labels

"1"  "Subject"

"2"  "Activity"

"3"  "Time body accelerometer mean value X"

"4"  "Time body accelerometer mean value Y"

"5"  "Time body accelerometer mean value Z"

"6"  "Time gravity accelerometer mean value X"

"7"  "Time gravity accelerometer mean value Y"

"8"  "Time gravity accelerometer mean value Z"

"9"  "Time body accelerometer jerk mean value X"

"10"  "Time body accelerometer jerk mean value Y"

"11"  "Time body accelerometer jerk mean value Z"

"12"  "Time body gyroscope mean value X"

"13"  "Time body gyroscope mean value Y"

"14"  "Time body gyroscope mean value Z"

"15"  "Time body gyroscope jerk mean value X"

"16"  "Time body gyroscope jerk mean value Y"

"17"  "Time body gyroscope jerk mean value Z"

"18"  "Time body accelerometer mag mean value "

"19"  "Time gravity accelerometer mag mean value "

"20"  "Time body accelerometer jerk mag mean value "

"21"  "Time body gyroscope mag mean value "

"22"  "Time body gyroscope jerk mag mean value "

"23"  "Frequency body accelerometer mean value X"

"24"  "Frequency body accelerometer mean value Y"

"25"  "Frequency body accelerometer mean value Z"

"26"  "Frequency body accelerometer jerk mean value X"

"27"  "Frequency body accelerometer jerk mean value Y"

"28"  "Frequency body accelerometer jerk mean value Z"

"29"  "Frequency body gyroscope mean value X"

"30"  "Frequency body gyroscope mean value Y"

"31"  "Frequency body gyroscope mean value Z"

"32"  "Frequency body accelerometer mag mean value "

"33"  "Frequency body body accelerometer jerk mag mean value "

"34"  "Frequency body body gyroscope mag mean value "

"35"  "Frequency body body gyroscope jerk mag mean value "

"36"  "Time body accelerometer standard deviation X"

"37"  "Time body accelerometer standard deviation Y"

"38"  "Time body accelerometer standard deviation Z"

"39"  "Time gravity accelerometer standard deviation X"

"40"  "Time gravity accelerometer standard deviation Y"

"41"  "Time gravity accelerometer standard deviation Z"

"42"  "Time body accelerometer jerk standard deviation X"

"43"  "Time body accelerometer jerk standard deviation Y"

"44"  "Time body accelerometer jerk standard deviation Z"

"45"  "Time body gyroscope standard deviation X"

"46"  "Time body gyroscope standard deviation Y"

"47"  "Time body gyroscope standard deviation Z"

"48"  "Time body gyroscope jerk standard deviation X"

"49"  "Time body gyroscope jerk standard deviation Y"

"50"  "Time body gyroscope jerk standard deviation Z"

"51"  "Time body accelerometer mag standard deviation "

"52"  "Time gravity accelerometer mag standard deviation "

"53"  "Time body accelerometer jerk mag standard deviation "

"54"  "Time body gyroscope mag standard deviation "

"55"  "Time body gyroscope jerk mag standard deviation "

"56"  "Frequency body accelerometer standard deviation X"

"57"  "Frequency body accelerometer standard deviation Y"

"58"  "Frequency body accelerometer standard deviation Z"

"59"  "Frequency body accelerometer jerk standard deviation X"

"60"  "Frequency body accelerometer jerk standard deviation Y"

"61"  "Frequency body accelerometer jerk standard deviation Z"

"62"  "Frequency body gyroscope standard deviation X"

"63"  "Frequency body gyroscope standard deviation Y"

"64"  "Frequency body gyroscope standard deviation Z"

"65"  "Frequency body accelerometer mag standard deviation "

"66"  "Frequency body body accelerometer jerk mag standard deviation "

"67"  "Frequency body body gyroscope mag standard deviation "

"68"  "Frequency body body gyroscope jerk mag standard deviation "