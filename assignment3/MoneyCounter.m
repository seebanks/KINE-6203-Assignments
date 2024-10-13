function [TotalMoneyAmount] = MoneyCounter(numQuarter,numDime, numNickle, numPenny)
%This function was created to help count the amount of money someone may
%have based on the number of quarters, dimes, nickles, and pennies they
%have. This function has four inputs(number of each type of coin listed) and will give one output (total amount
%of money).

%This function requires the user to input the number of coins in the specific order of
%1)Quarters, 2)Dimes, 3)Nickles, and 4)Pennies to perform calculations
%correctly. Each coin is multiplied by its dollar worth: 25cents, 10cents,
%5cents, and 1cent respectively.

%Written by: Selina Banks
%Due Date: 10/16/2024
%Code tested on Matlab R2023a (ver 9.14) using a Macbook)S Sonoma 14.6.1

Q = numQuarter * 0.25;
D = numDime * 0.10;
N = numNickle * 0.05;
P = numPenny * 0.01;

TotalMoneyAmount = Q + D + N + P;

end