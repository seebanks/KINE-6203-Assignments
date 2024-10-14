function [result] = PrimeNumber(num1)
%This function is used to determine if the input value is a prime number. A prime number is
%a whole number greater than one that can only be divided by 1 or itself
%(meaning it only has 2 divisors). 
%
%For this function, the user will give one input and there will be one output provided.
%This function takes the input and divides it by itself, 2, 3, and 5. A
%prime number would not be able to have more than 2 divisors so this
%function groups 3 divisors together for the input to be compared to. I
%chose the numbers 2,3, and 5 because every number that is not prime should
%able to simplify down to two of these divisors.
% 
% The built in function 'mod()' is used because it takes the input and
% divides it by one of the values listed above. Then mod looks for a
% remainder resulting from the division. An exact division gives a
% remainder of 0. 
% If there is no remainder after the 3 divisions then the number is not prime so the output will be 0.
% Remember a prime number cannot be exactly divided by a whole number that it
% not only 1 and itself.  
% If the input is a prime number the output will return the value 1 (indicating it the prime number is true).
% If the input is not a prime number the output will return the value 0 (indicating the prime number is false.

%Written by: Selina Banks
%Due Date: 10/16/2024
%Code tested on Matlab R2023a (ver 9.14) using a Macbook)S Sonoma 14.6.1


%the use of && tells the code that the input needs to meet the criteria of
%both commands. the || states that the input needs to meet one set of
%commands OR another set of commands. So for this code, to be a prime
%number, the number must be divisible by itself, 2 and 3 OR it must be
%divisible by itself, 2, and 5 OR etc. 

msg = "Invalid input. Please reenter your input as a value that is greater than 1 to test if the number is a prime number"; %this message is written outside of the if statement so it can be called on if the user enters an invalid number

if num1 > 1  %this ensures that the number only goes through the calculations if it is greater than 1
    if ((mod(num1,num1)==0 && mod(num1,2)==0) && mod(num1,3)==0) || (mod(num1,num1)==0 && mod(num1,2)==0) && mod(num1,5)==0 || (mod(num1,num1)==0 && mod(num1,3)==0) && mod(num1,5)==0 
    result = 0;
    else
    result = 1;
    end  
else
   error(msg); %if the user inputs a number that is 1 or less than 1, they will recieve an error message.
end 
end 
