function [visual] = VectorPlotting(vector1,vector2)
%This function is used to plot two vectors on a figure. The function
%requires two inputs -- the two vectors set by the user. The input will be
%the variable names of the two vectors that the user wants to plot. The
%output of this function is a figure of a simple 2D line plot of the
%vector values.

%This function will also display "Vectors Graph" as the title of the
%figure, the x label will be named "Vector 1" and the y axis will be named
%"Vector 2"

%Written by: Selina Banks
%Due Date: 10/16/2024
%Code tested on Matlab R2023a (ver 9.14) using a Macbook)S Sonoma 14.6.1

visual = plot(vector1,vector2);
    title('Vectors Graph')
    xlabel('Vector 1')
    ylabel('Vector 2')

end

