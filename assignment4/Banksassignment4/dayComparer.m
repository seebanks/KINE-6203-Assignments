function [DaySubjImprovement] = dayComparer(SubjectID,DayA, DayB)
%The purpose of this function (dayComparer) is to assess which partipants
%improved their max strength from the first day to the second day and/or
%who increased max strength from the second day to the third day.
% 
%There are 3 inputs for this function: subject ID, DayA, and DayB. The user
%will be able to type in which two days they would like to compare (day 1
%vs day 2 or day 2 vs day3).
%The function will provide one output which will be an array showing the
%subject IDs that improved strength performance. To test if there was
%improvement between the days, this function will take DayB and subtract
%DayA values. If the difference between the days is greater than 0, then
%that means the participant did not increase performance from DayA to DayB.

%Written by: Selina Banks
%Due Date: 11/13/2024
%Code tested on Matlab Online R2024b (ver 24.2) using a Macbook OS Sequoia
%15.1. Last Updated Nov. 13 2024

numofsubjects = length(SubjectID); %this looks for the length (number of subjects) in the data file. So for this example, it would be 26 subjects.
k = 1; %k is used to index within the output variable. This means that instead of overriding the data as this scans the participants, it will create a new column for each participant that meets the criteria.

for i = 1:numofsubjects %for loop is used so code runs for each participant. 
    if DayB(i) - DayA(i) > 0 %if the second day value - the first day value is greater than 0...
        DaySubjImprovement(k) = SubjectID(i); %subject showed improvement in strength and subject ID i will be added to the output variable in the spot k 
        k = k+1; %add 1 to k so that a new row is used and output varibale is not overwritten
    else %do nothing if no improvement is shown
    end
end 
DaySubjImprovement = DaySubjImprovement'; %this transposes the output to be a column vector instead of a row vector
end

