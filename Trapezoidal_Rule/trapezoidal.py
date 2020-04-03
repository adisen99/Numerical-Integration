#------------------Python Code--------------------
# Finding the definite integral of a user-defined
# function within the range [a,b] using the 
# Trapezoidal Rule of Numerical Integration
#-------------------------------------------------

# import the necessary libraries
import matplotlib.pyplot as plt
import numpy as np
from scipy.interpolate import spline

# Define the function prefixes using NumPy
sin = np.sin
cos = np.cos
tan = np.tan
pi  = np.pi
exp = np.exp
ln  = np.log
log = np.log10

fx = input("Enter the function whose integral you wish to determine :")      # take function as input from the user
f  = lambda x: eval(fx)                                                      # using lambda for defining function

# Enter the iterations and limits of integration
n = int(input('Enter the number of trapeziums you want like 100, 1000, 10000, etc. :')); 
a = float(input('Please provide the lower limit:')); #  starting point or lower limit of the area
b = float(input('Please provide the upper limit:')); #  end point or upper limit of the area

# The following is the actual algorithm of the trapezoidal rule
s  = 0.0
dx = float((b - a)/(n - 1)) # to find step size or height of trapezium
	
for i in range(1,n):
	if (i == 1 or i == n):
		s = s + f(a)/2
	else:
		s = s + f(a + i*(dx))

# defining the area
area = s*dx   

# Obtain the area as the answer
print('The solution is :',area)