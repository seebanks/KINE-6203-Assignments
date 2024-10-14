function [OutputSum, OutputDiff, OutputProd, OutputMax] = SimpleEquations(num1,num2)

%For this function, user will input 2 numbers and there will be four outputs. 
%The Outputs that will be returned are the sum of the numbers, the difference of the numbers, 
%the product of the numbers, and the max number from the input values.
%The first output will be the sum. For this equation, the two numbers will be added together
%The second output will be for the difference. The second number will be subtracted from the first
%number.
%For the product, the two numbers will be multiplied together
%For the max number, the larger number from the two inputs will be
%displayed.

%Written by: Selina Banks
%Due Date: 10/16/2024
%Code tested on Matlab R2023a (ver 9.14) using a Macbook)S Sonoma 14.6.1

OutputSum = num1 + num2;
OutputDiff = num1 - num2;
OutputProd = num1 * num2;

%if statement is used so the computer can compare the two inputs. It test
%to see if the first input is greater than the second input. It will
%return the first number as the max number. If the second number is larger
%thant the function will return the second number as the max
if (num1>num2)
    OutputMax = num1;
else
    OutputMax = num2;
end
end