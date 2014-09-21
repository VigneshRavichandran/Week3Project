Code Book:

x_train - contains the data from the file x_train.txt
y_train - contains the data from the file y_train.txt
x_test - contains the data from the file x_test.txt
y_test - contains the data from the file y_test.txt
subject_train - contains the data from the file subject_train.txt
subject_test - contains the data from the file subject_test.txt


columnnames - contains the data from the file features.txt

The second column of columnnames is assigned as colnames to x_test and x_train.

The only one column of y_test and y_trains is activity

The only one column of subject_test, subject_trains is named as subject


Testdata - contains all the test data (column binded)

Traindata - contains all the train data (column binded)

Mergeddata - row binded data of Testdata, Traindata


Step2:

meanssdcolumns - contains all the columns that have mean and std

Step4:
formatnames - contains the formatted column names

As per the norms in the video lecture:

1) All column names are made to lower case
2) All spaces are removed
3) special characters like "-" are removed

Step 5:

MergeddataMelt - melted the data for the id columns subject and activity and others as variables.

FinalData - contains the final data after doing dcast and calculating the mean for variables.


