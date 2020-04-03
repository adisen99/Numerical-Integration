%----------MATLAB Code--------------------------
% Finding the definite integral of a user-defined
% function within the range [a,b] using the 
% Trapezoidal Rule of Numerical Integration
%-----------------------------------------------

clear all
clc

a = input('Enter the function in the form of variable x:','s');       %user defines the function
f = inline(a);
n = 1000; % number of small trapeziums formed after splitting 
a = input('Please provide the lower limit:'); %  starting point or lower limit of the area
b = input('Please provide the upper limit:'); %  end point or upper limit of the area

sum = 0.0;  % to find the sum 
dx = (b-a)/(n-1); %  to find step size or height of trapezium 

% Generating the samples  
for i = 1:n
    x(i) = a + (i-1)*dx; 
end

% to generate the value of function at different values of x or sample 
 
for i = 1:n
    y(i) = f(x(i));         % user defined function
end

% computation of area by using the technique of trapezium method 
 
for i = 1:n
    if ( i == 1 || i == n) % for finding the sum of first and last ordinate
        sum = sum + y(i)./2;
    else
        sum = sum + y(i); % for calculating the sum of other ordinates 
    end
end
area = sum * dx; % defining the area
 
area             % obtain the area as answer