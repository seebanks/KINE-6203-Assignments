function [NormANDMean] = WeightNormalized(SubjectID, Day, Weight)
%This function (WeightNormalized) was created to normalize the max strength
%on each day to the weight of the subject. THis function ask for three
%inputs: the subject ID, the day of interest, and the subject's
%weight. After the weight normalization, group means will be taken and the
%output of the function will be the group normative data mean. 

%Written by: Selina Banks
%Due Date: 11/13/2024
%Code tested on Matlab Online R2024b (ver 24.2) using a Macbook OS Sequoia
%15.1. Last Updated Nov. 13 2024

for i = 1:length(SubjectID) %for loop is used so that script runs for all participants (n=26)
    individualNorms(i) = Day(i)/Weight(i); %to normalize strength values to weight, the max strength on a given day will be divded by the weight of the participant.
end 

NormANDMean = mean(individualNorms); %this takes the mean of all normalized group data

end


