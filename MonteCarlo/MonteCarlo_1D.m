% Monte Carlo Integration of a given function
% Evaluate the integral of (cos2x + sin2x)^2 from x=0 to x=2

clear all
clc

f = @(x) (cos(2 .*x) + sin(2 .*x)) .^2  ; 
ref = integral(f, 0, 2);

fprintf('The reference value is %f \n', ref)

sample = 10000;

n = 2.0 * rand(sample, 1);
fn = 2.0 * f(n);
mean = mean(fn);
err = std(fn) / sqrt(sample);

fprintf('Monte Carlo estimates (sample=%d) %f +/- %f \n', ...
    sample, mean, err);



