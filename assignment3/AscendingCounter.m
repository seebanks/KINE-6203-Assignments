function [result] = AscendingCounter(num1,num2)
%This function was created to act as a counter from the lowest value to the
%highest value inputted. There are two inputs required for this function
%and one output will be returned. 

%This function works by determing the smaller number of the two inputs with
%the matlab function "min()" and then the bigger number is determined with
%the matlab function "max()". Once the code determines the bigger and
%smaller value from the user input, the output will return an array that counts up from
%the smaller number to the larger number in intervals of 1.

%Written by: Selina Banks
%Due Date: 10/16/2024
%Code tested on Matlab R2023a (ver 9.14) using a Macbook)S Sonoma 14.6.1

lower = min(num1,num2);
higher = max(num1, num2);

result = (lower:1:higher);

end
