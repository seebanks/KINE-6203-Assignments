function [characterNum,Firstcharacter, Lastcharacter] = SstringCharacteristics(inputArg1)
%This function has one input and returned three outputs. The input should
%be a string value (meaning a word(s)). This function searches the string
%value, and the outputs returned are 1) the length of the string, 2) the
%first character of the string, and 3) the last character of the string.

%The imbedded functions that are used are "strlength" to get the number of
%characters making up the string, and "string" to search for specific parts
%of the string. By indicating string(1) this will return the first
%character of any string. Using string(end) will return the last character
%of the string, not matter how long the string is or the type of character
%used (letter, punctuation mark, number)

%Written by: Selina Banks
%Due Date: 10/16/2024
%Code tested on Matlab R2023a (ver 9.14) using a Macbook)S Sonoma 14.6.1

string = inputArg1;
characterNum = strlength(string);
Firstcharacter = string(1);
Lastcharacter = string(end);

end