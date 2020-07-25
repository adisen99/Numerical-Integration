#------------------Python Code--------------------
# Finding the definite integral of a user-defined
# function within the range [a,b] using the 
# Monte Carlo Numerical Integration (Random Sampling)
#-------------------------------------------------

# import the necessary libraries

import numpy as np
from scipy import random
import matplotlib.pyplot as plt

# Define the function prefixes using NumPy
sin = np.sin
cos = np.cos
tan = np.tan
pi  = np.pi
exp = np.exp
ln  = np.log
log = np.log10

fx = input("Enter the function whose integral you wish to determine :")      # take function as input from the user
func  = lambda x: eval(fx)                                                      # using lambda for defining function

# Enter the iterations and limits of integration
n = int(input("Enter the number of samples (preferably a large integer) :")); # Number of samples 
a = 0.0; #  starting point or lower limit of the area
b = np.pi; #  end point or upper limit of the area

areas = []

for i in range(n):
    xrand = random.uniform(a,b,n) # This is an array of random number generated to model the function in a uniform distribution

    integral = 0.0

    for i in range(n):
        integral += func(xrand[i])

    answer = (b-a)/float(n) * integral 
    
    areas.append(answer)

print("The integral of the given function is approximately:", answer)

plt.title('Distribution of the value of the integral')
plt.hist(areas, bins=30, ec='black')
plt.xlabel('Numerical value of integral')
plt.ylabel('Frequency')
plt.show()
