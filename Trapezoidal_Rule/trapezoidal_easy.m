%----------MATLAB Code(easy)--------------------
% Finding the definite integral of a user-defined
% function within the range [a,b] using the 
% Trapezoidal Rule of Numerical Integration
%-----------------------------------------------

clear all;
close all;
clc;

a = input('Enter the function in the form of variable x:','s');       %user defines the function
f = inline(a);
n = 1000; % number of small trapeziums formed after splitting 
a = input('Please provide the lower limit:'); %  starting point or lower limit of the area
b = input('Please provide the upper limit:'); %  end point or upper limit of the area

h = (b-a)/n;

% Initialize the algorithm
Sum = (f(a) + f(b))/2;

% Run the loop
for i = 1:(n-1)
	Sum = Sum + f(a + i*h);
end

% Output the answer as the area.
answer = Sum*h;

fprintf('The solution is:')

answer