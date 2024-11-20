function [maleIsoIndMeans,femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean ] = genderIsoCalc(Gender, Day1, Day2, Day3)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

maleIsoData = Gender == "M"; %This states that those subjects categorized as males will be pulled out and grouped together
femaleIsoData = Gender == "F"; %This states that those subjects categorized as females will be pulled out and grouped together


maleIsoIndMeans = (Day1(maleIsoData)+Day2(maleIsoData)+Day3(maleIsoData))/3;
femaleIsoIndMeans = (Day1(femaleIsoData)+Day2(femaleIsoData)+Day3(femaleIsoData))/3;

maleGroupIsoMean = mean(maleIsoIndMeans);
femaleGroupIsoMean = mean(femaleIsoIndMeans);

end
