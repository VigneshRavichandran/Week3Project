Week3Project
============
I've done the 5 steps in a single function:

Step 1:

1) All the test data are merged by cbind
2) All the train data are merged by cbind
3) Test and Train data re merged by rbind
4) Columnnames are fetched from features and assigned to the merged data

Step 2:

1) All the column names containing Mean,Std are fetched using grep command

Step 3:

1) The activity code is replaced with the activity itself as mentioned in the activity_labels.txt

Step 4:

Use of gsb function to change
1) All column names changed to lowercase
2) All spaces in column names are removed
3) Special characters like "-" are removed

Step 5:

Using library(reshape2)

1) The mergeddata is melted down to MergeddataMelt using subject and activity as id columns and others as Variable columns
2) FinalData is fetched by doing dcast and calculating the mean of varibale columns.
