#------------------Python Code--------------------
# Finding the definite integral of a user-defined
# function within the range [a,b] using the 
# Simpson's 3/8 Rule of Numerical Integration
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

# Test whether the chosen value of n (sub-intervals) is a multiple of 3 or not.
if n % 3 == 0:
	print("The chosen no. of sub-intervals is good")
else:
	print("ERROR! : The chosen no. of sub-intervals should be a multiple of 3")
	n = int(input("Enter the new no. of sub-intervals:"))

a = float(input('Please provide the lower limit:')); #  starting point or lower limit of the area
b = float(input('Please provide the upper limit:')); #  end point or upper limit of the area

# The following is the actual algorithm of the Simpson's 3/8 rule
s = f(a) + f(b)
h  = float((b - a)/n) # to find the size of each sub-interval

for i in range(1,(n-1)):
	s = s + 3*f(a + i*h)

for j in range(3,(n-3),3):
	s = s - 3*f(a + j*h)

for k in range(3,(n-3),3):
	s = s + 2*f(a + k*h)

# defining the area
area = (s)*((3*h)/8)   

# Obtain the area as the answer
print('The solution is :',area)