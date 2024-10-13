function [ValidTraingle] = Triangles(triangleSides)

%This function is used to see if a valid triangle is present from the
%lengths of the side the user inputs. In a valid traingle, the sum of the
%lengths of the two shortest sides should be greater than the length of the
%longest side of the triangle. 

%For this function the input is a single 3-element array. The built in
%matlab function 'sort()' is used to sort the order of the numbers from
%lowest to highest. This allows the computer to determine the values of the
%two shortest sides and the longest side. The function then adds together the two smallest values (aka the shortest sides)
%and determines if the sum of the shortest side is greater than the longest
%side. If the sum of the two shortest sides is greater than the value of
%the longest side of the triangle, the output will return a value of 1
%(indicating the valid triangle is true). If the sum of the two shortest sides is less than the value of
%the longest side of the triangle, the output will return a value of 0
%(indicating the valid triangle is false).  

%Written by: Selina Banks
%Due Date: 10/16/2024
%Code tested on Matlab R2023a (ver 9.14) using a Macbook)S Sonoma 14.6.1
 
sides = sort(triangleSides);

if (sides(1) + sides(2)) > sides(3)
ValidTraingle = 1;
else 
ValidTraingle = 0;
end

end

