% Monte Carlo integration for a 
% function with 2 independent variables

clear all
clc

f = @(x,y) 3*x.^2 + 5*y.^2;
sample = 10000;
x = zeros(sample, 1);

for i=1:sample
    rx = rand() ;
    ry = rand() ;
    x(i) = f(rx,ry) ;
end

mean = mean(x);
err = std(x) / sqrt(sample) ;

fprintf('Monte Carlo estimates (sample=%d) %f +/- %f \n', ...
    sample, mean, err);