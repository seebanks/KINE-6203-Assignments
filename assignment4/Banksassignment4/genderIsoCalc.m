function [maleIsoIndMeans,femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean ] = genderIsoCalc(Gender, Day1, Day2, Day3)
%The purpose of this function (genderIsoCalc) take information about the
%gender and the 3 days of strength data and analyze the data based on means
%for males and females and then whole group means.
%This function accepts 4 inputs: Gender, Day 1 strengths, Day 2 strengths,
%and Day 3 strengths
%There are 4 outputs from this function: 
% maleIsoIndMeans(mean strength for each male participant)
% femaleIsoIndMeans (mean strength for each female participant)
% maleGroupIsoMean(mean strength the male group as a whole)
% femaleGroupIsoMean(mean strength the female group as a whole)

%Written by: Selina Banks
%Due Date: 11/13/2024
%Code tested on Matlab Online R2024b (ver 24.2) using a Macbook OS Sequoia
%15.1. Last Updated Nov. 13 2024

maleIsoData = Gender == "M"; %This states that data from those subjects categorized as males from the gender vector will be pulled out and grouped together 
femaleIsoData = Gender == "F"; %This states that data from those subjects categorized as females from the gender vector will be pulled out and grouped together 


maleIsoIndMeans = (Day1(maleIsoData)+Day2(maleIsoData)+Day3(maleIsoData))/3; %We are adding the Isometric muscle strength data from days 1-3 for each male participant specfically and then dividing by 3 to get the average strength for each male 
femaleIsoIndMeans = (Day1(femaleIsoData)+Day2(femaleIsoData)+Day3(femaleIsoData))/3; %the same process is being done here except with only female subjects

maleGroupIsoMean = mean(maleIsoIndMeans); %this takes the average strength of the whole male group
femaleGroupIsoMean = mean(femaleIsoIndMeans);%this takes the average strength of the whole female group

end
