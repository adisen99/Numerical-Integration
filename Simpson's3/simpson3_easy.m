%-------------MATLAB Code---------------------
% The following is the algorithm to determine
% definite integral of a user-defined function
% using the Simpson's 1/3 rule algorithm
%---------------------------------------------

clear all;
close all;
clc;

a = input('Enter the function in the form of variable x:','s');       %user defines the function
f = inline(a);

a = input('Enter the lower limit of the integral:'); %  starting point or lower limit of the area
b = input('Enter the upper limit of the integral:'); %  end point or upper limit of the area
n = input('Enter the no. of sub-intervals:')

% Test whether the chosen value of n (sub-intervals) is a multiple of 2 or not.
if mod(n,2) == 0
	fprintf('The chosen no. of sub-intervals is good')
else
	fprintf('ERROR! : The chosen no. of sub-intervals should be a multiple of 2')
	n = input('Enter the new no. of sub-intervals:');
end

% define the interval h

h = (b-a)/(n);

% Initialize the algorithm
Sum = (f(a) - f(b));

% Run the loop
for i = 1:2:(n-1)
  Sum = Sum + 4*f(a + i*h) + 2*f(a + (i+1)*h);
end

% Output the answer as the area.
answer = Sum*(h/3.0);

fprintf('The solution is:')
answer