# How the script works and the
The script reads two sets of data:  
*First the test set formed by the files*  

 - X_test.txt  
 - y_text.txt  
 - subject_test.txt  
  
*Second the training set formed by the files*  

  - X_train.txt  
  - y_train.txt  
  - subject_train.txt  
    
Gets the names of the column data from the file features.txt

Merges all the information of all this files and filter the columns that have inforatión of mean and standar deviation
changes the names to a more descriptive ones to descrive the data set

Calculates the mean of all the the measures filtering each **Subjet** and each **Activity**, and writes the resutl in a file called **means.txt**

In the file ColNames.txt the name of the columns of the data set is stored.

# Code book describing the variables


Subjetc is a number representing on of the 30 volunters

- The original data comes from the UCI machine lerning and intelligent System
- http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
- Aditional information can be found in Readme.txt, features_info.txt, features.txt, and activity_labels

**All the data from columns 3 to 68 represents the average of each variable for each activity and each subject**

Column | Variable    |  Range
-------|-------------|----------|----------
1| Subject (Voluntair that perform the activity|[1,30] Integer values representing a person.
2|Activity|String describint the activity
3|Time body accelerometer mean value X|[-1.0,1.0] . Normalized floating point values
4|Time body accelerometer mean value Y|[-1.0,1.0] . Normalized floating point values
5|Time body accelerometer mean value Z|[-1.0,1.0] . Normalized floating point values
6|Time gravity accelerometer mean value X|[-1.0,1.0] . Normalized floating point values
7|Time gravity accelerometer mean value Y|[-1.0,1.0] . Normalized floating point values
8|Time gravity accelerometer mean value Z|[-1.0,1.0] . Normalized floating point values
9|Time body accelerometer jerk mean value X|[-1.0,1.0] . Normalized floating point values
10|Time body accelerometer jerk mean value Y|[-1.0,1.0] . Normalized floating point values
11|Time body accelerometer jerk mean value Z|[-1.0,1.0] . Normalized floating point values
12|Time body gyroscope mean value X|[-1.0,1.0] . Normalized floating point values
13|Time body gyroscope mean value Y|[-1.0,1.0] . Normalized floating point values
14|Time body gyroscope mean value Z|[-1.0,1.0] . Normalized floating point values
15|Time body gyroscope jerk mean value X|[-1.0,1.0] . Normalized floating point values
16|Time body gyroscope jerk mean value Y|[-1.0,1.0] . Normalized floating point values
17|Time body gyroscope jerk mean value Z|[-1.0,1.0] . Normalized floating point values
18|Time body accelerometer mag mean value |[-1.0,1.0] . Normalized floating point values
19|Time gravity accelerometer mag mean value |[-1.0,1.0] . Normalized floating point values
20|Time body accelerometer jerk mag mean value |[-1.0,1.0] . Normalized floating point values
21|Time body gyroscope mag mean value |[-1.0,1.0] . Normalized floating point values
22|Time body gyroscope jerk mag mean value |[-1.0,1.0] . Normalized floating point values
23|Frequency body accelerometer mean value X|[-1.0,1.0] . Normalized floating point values
24|Frequency body accelerometer mean value Y|[-1.0,1.0] . Normalized floating point values
25|Frequency body accelerometer mean value Z|[-1.0,1.0] . Normalized floating point values
26|Frequency body accelerometer jerk mean value X|[-1.0,1.0] . Normalized floating point values
27|Frequency body accelerometer jerk mean value Y|[-1.0,1.0] . Normalized floating point values
28|Frequency body accelerometer jerk mean value Z|[-1.0,1.0] . Normalized floating point values
29|Frequency body gyroscope mean value X|[-1.0,1.0] . Normalized floating point values
30|Frequency body gyroscope mean value Y|[-1.0,1.0] . Normalized floating point values
31|Frequency body gyroscope mean value Z|[-1.0,1.0] . Normalized floating point values
32|Frequency body accelerometer mag mean value |[-1.0,1.0] . Normalized floating point values
33|Frequency body body accelerometer jerk mag mean value |[-1.0,1.0] . Normalized floating point values
34|Frequency body body gyroscope mag mean value |[-1.0,1.0] . Normalized floating point values
35|Frequency body body gyroscope jerk mag mean value |[-1.0,1.0] . Normalized floating point values
36|Time body accelerometer standard deviation X|[-1.0,1.0] . Normalized floating point values
37|Time body accelerometer standard deviation Y|[-1.0,1.0] . Normalized floating point values
38|Time body accelerometer standard deviation Z|[-1.0,1.0] . Normalized floating point values
39|Time gravity accelerometer standard deviation X|[-1.0,1.0] . Normalized floating point values
40|Time gravity accelerometer standard deviation Y|[-1.0,1.0] . Normalized floating point values
41|Time gravity accelerometer standard deviation Z|[-1.0,1.0] . Normalized floating point values
42|Time body accelerometer jerk standard deviation X|[-1.0,1.0] . Normalized floating point values
43|Time body accelerometer jerk standard deviation Y|[-1.0,1.0] . Normalized floating point values
44|Time body accelerometer jerk standard deviation Z|[-1.0,1.0] . Normalized floating point values
45|Time body gyroscope standard deviation X|[-1.0,1.0] . Normalized floating point values
46|Time body gyroscope standard deviation Y|[-1.0,1.0] . Normalized floating point values
47|Time body gyroscope standard deviation Z|[-1.0,1.0] . Normalized floating point values
48|Time body gyroscope jerk standard deviation X|[-1.0,1.0] . Normalized floating point values
49|Time body gyroscope jerk standard deviation Y|[-1.0,1.0] . Normalized floating point values
50|Time body gyroscope jerk standard deviation Z|[-1.0,1.0] . Normalized floating point values
51|Time body accelerometer mag standard deviation |[-1.0,1.0] . Normalized floating point values
52|Time gravity accelerometer mag standard deviation |[-1.0,1.0] . Normalized floating point values
53|Time body accelerometer jerk mag standard deviation |. Normalized floating point values
54|Time body gyroscope mag standard deviation |[-1.0,1.0] . Normalized floating point values
55|Time body gyroscope jerk mag standard deviation |[-1.0,1.0] . Normalized floating point values
56|Frequency body accelerometer standard deviation X|[-1.0,1.0] . Normalized floating point values
57|Frequency body accelerometer standard deviation Y|[-1.0,1.0] . Normalized floating point values
58|Frequency body accelerometer standard deviation Z|[-1.0,1.0] . Normalized floating point values
59|Frequency body accelerometer jerk standard deviation X|[-1.0,1.0] . Normalized floating point values
60|Frequency body accelerometer jerk standard deviation Y|[-1.0,1.0] . Normalized floating point values
61|Frequency body accelerometer jerk standard deviation Z|[-1.0,1.0] . Normalized floating point values
62|Frequency body gyroscope standard deviation X|[-1.0,1.0] . Normalized floating point values
63|Frequency body gyroscope standard deviation Y|[-1.0,1.0] . Normalized floating point values
64|Frequency body gyroscope standard deviation Z|[-1.0,1.0] . Normalized floating point values
65|Frequency body accelerometer mag standard deviation |[-1.0,1.0] . Normalized floating point values
66|Frequency body body accelerometer jerk mag standard deviation |[-1.0,1.0] . Normalized floating point values
67|Frequency body body gyroscope mag standard deviation |[-1.0,1.0] . Normalized floating point values
68|Frequency body body gyroscope jerk mag standard deviation |[-1.0,1.0] . Normalized floating point values
