function [result] = WooHah(num1,num2)
%This function requires two inputs, and will return one output. The funtion
%will add the two inputs together, and if the sum is an even number, the
%output value will display "Woo". If the sum of the two inputs is an odd number,
%then the output will display "Hah". 

%Written by: Selina Banks
%Due Date: 10/16/2024
%Code tested on Matlab R2023a (ver 9.14) using a Macbook)S Sonoma 14.6.1

resultSum = num1+num2;

if mod(resultSum,2) ~=0 %the function mod is a built in feature through matlab that looks for a remainder after division. An even number will not have a remainder when divided by 2. 
    result = 'Hah';
else
    result = 'Woo';
end