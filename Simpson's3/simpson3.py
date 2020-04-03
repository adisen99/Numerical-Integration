#------------------Python Code--------------------
# Finding the definite integral of a user-defined
# function within the range [a,b] using the 
# Simpson's 1/3 Rule of Numerical Integration
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
n = int(input('Enter the number of sub-intervals :'))

# Test whether the chosen value of n (sub-intervals) is a multiple of 2 or not.
if n % 2 == 0:
	print("The chosen no. of sub-intervals is good")
else:
	print("ERROR! : The chosen no. of sub-intervals should be a multiple of 2")
	n = int(input("Enter the new no. of sub-intervals:"))

a = float(input('Please provide the lower limit:')); #  starting point or lower limit of the area
b = float(input('Please provide the upper limit:')); #  end point or upper limit of the area

# The following is the actual algorithm of the Simpson's 1/3 rule
s  = f(a) - f(b)
h = float((b - a)/n) # to find the size of each sub-interval
	
for i in range(1,(n-1),2):
	s = s + 4*f(a + i*h) + 2*f(a + (i + 1)*h)

# defining the area
area = s*(h/3)   

# Obtain the area as the answer
print('The solution is :',area)