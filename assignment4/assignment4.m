%Selina Banks
%KINE 6203 Assignment 4
%Due Date: Nov. 6 2024

%This assignment ...

%Step 1: Import file data
filename = uigetfile('*.csv', "Select a CSV file to read"); %the uigetfile function is imbedded in matlab and opens up a dialog box that list files in the current folder
%that the user is in. This function allows the user to select a file they
%would like to use. Once the file is selected and the user selects
%'open'the file will open. For the purpose of this assignment, there is one
%only file that will work with this code.

[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile(filename);
%I am calling so the isok data can be imported. The separate outputs are the individual columns of data from the file separated into vectors based on their column name. 

%Step 2:
[maleIsoIndMeans,femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Gender, Day1, Day2, Day3);

%Step 3
%[day1toDay2] = dayComparer(SubjectID, Day1, Day2);

%Step 4
normDay1mean = 
normDay2mean = 
normDay3mean = 