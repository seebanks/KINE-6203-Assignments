function [StrengthIncreaseSubj] = dayComparer(SubjectID, DayNum1, DayNum2)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here


for i = 1:25
    if DayNum2 > DayNum1
        StrengthIncreaseSubj = [StrengthIncreaseSubj; DayNum2(SubjectID)];
    else 
    end
end
end

%Create a function that takes the subject ids and two days as inputs and
%returns a matrix with the subject IDs of the subjects who had an increase from the first day to the
%second day (it should also work for the second day to the third day). Run this function in your main
%script twice (be sure to update your inputs when you call the function the second time) and store
%the outputs as day1toDay2 and day2toDay3