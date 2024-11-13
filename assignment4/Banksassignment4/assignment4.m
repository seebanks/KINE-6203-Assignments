%Selina Banks
%KINE 6203 Assignment 4
%Due Date: Nov. 13 2024

%This script was written to take in isometric strength data and analyze
%differences between participants over the 3 days of
%strength training. Additionally, demographic data was provided (subjectID,
%age, gender, and weight) which were used to return individual and group
%metrics. One built in function (importfile.m) and three user created functions
%were utilzed in this script - genderIsoCalc.m, dayComparer.m, and
%WeightNormalized.m

%Code tested on Matlab Online R2024b (ver 24.2) using a Macbook OS Sequoia
%15.1. Last Updated Nov. 13 2024

%Step 1: Import file data
filename = uigetfile('*.csv', "Select a CSV file to read"); %the matlab function uigetfile opens a dialog box that list files in the current folder. It allows the user to select or enter the name of the file.

%using the *.csv allows the user to select the CSV file that will be read
%for this script. For the purpose of this assignment, the actual file with the data is not uploaded, therefore only the professor can access and upload the correct strength data file.

[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile(filename);

%using the matlab import data tool, the function importfile was created
%which then takes the different columns from the uploaded file and
%separates them into individual vectors. Each vector variable is named
%after the column header title.

%Step 2: Return a matrix with individual mean isometric strength across all
%3 days of lifintg for the appropriate group & single mean values for each
%group (male vs female). 

[maleIsoIndMeans,femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Gender, Day1, Day2, Day3);

%Step 3: Return a matrix with subject IDs of subjects who had an increase
%from the first to second day and the second to third day.

day1toDay2 = dayComparer(SubjectID, Day1, Day2); 
day2toDay3 = dayComparer(SubjectID, Day2, Day3);

%Step 4
%Weight normalize the isokinetic data and calculate the group means for each day. Store these values
%with the names normDay1mean, normDay2mean, normDay3mean. You do not need to write a
%function for this, but if you’d like to feel free.

normDay1mean = WeightNormalized(SubjectID, Day1, Weight); %normalized group mean for day 1
normDay2mean = WeightNormalized(SubjectID, Day2, Weight); %normalized group mean for day 2
normDay3mean = WeightNormalized(SubjectID, Day3, Weight); %normalized group mean for day 3

%Step 5: Export Results
%From the 9 variables created, the variable maleIsoIndMeans has the most
%amount of rows. In order to create a table that holds all 9 variables,
%each column needs to have the same amount of rows. Since the other 8
%variables have less than 13 rows, I am creating cells for each variable
%where 'NaN" will fill in the rows that are empty. Each variable will be
%its own column in the table (indicated by the 1). 

maleIsoIndMeans(13,1) = NaN; %this variable has the most rows so should not see NaN in table.
femaleIsoIndMeans(13,1) = NaN; %this variable has 12 rows so NaN should appear in row 13
maleGroupIsoMean(2:13,1) = NaN; %this variable has 1 row so NaN should appear in rows 2:13
femaleGroupIsoMean(2:13,1) = NaN; %this variable has 1 rows so NaN should appear in rows 2:13
day1toDay2(13,1) = NaN; %this variable has 12 rows so NaN should appear in the last row
day2toDay3(12:13,1) = NaN; %this variable has 11 rows so NaN should appear in the last 2 rows
normDay1mean(2:13,1) = NaN; %this variable has 11 rows so NaN should appear in rows 2:13
normDay2mean(2:13,1) = NaN; %this variable has 11 rows so NaN should appear in rows 2:13
normDay3mean(2:13,1) = NaN; %this variable has 11 rows so NaN should appear in rows 2:13

results = table(maleIsoIndMeans,femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean, day1toDay2, day2toDay3,normDay1mean, normDay2mean, normDay3mean); %the table function should compact the 9 variables into a table, saved as the variable results

writetable(results, "iso_results.csv") %the matlab function writetable is used to export the results table into a csv file that we are naming iso_results.csv