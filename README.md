# Numerical-Integration
Python and MATLAB code to find the definite integral of a user-defined function within given limits and defined iterations.

_______________________________________________________________________________________________________________________________


### Included files
There are in total 4 files in the repository, each following a different algorithms, namely **Monte Carlo**, **Trapezoidal** Rule and the **two Simpson's Rules**. Code for the **Legendre-Gauss Quadrature formula** will be added soon. Each folder contains **MATLAB or .m** and **Python or .py**. So you can use either syntax and program/language to numerically determine the roots of an equation/function using the given Methods or algorithms.

To access the files you can either Download the zip file or use the following command from your terminal


``
git clone https://github.com/adisen99/Numerical-Integration.git
``

then


``
cd Numerical-Integration 
``

### Note-


Then you can access the `.py files` or `.m` files depending on the program you wish to run. Please note than **Simpson's3** is the **Simpson's 1/3** and the **Simpson's8** is the **Simpson's 3/8** rule. The **Simpson's3** folder contains two MATLAB files one of which has a much simpler algorithm as compared to the other more difficult one. Also the **Trapezoidal_Rule** folder contains two MATLAB and two Python files. One set is marked as easy and thus has a much easier algorithm, however the user can choose to run the more complex ones.

## Dependencies for Python -
This program uses the following libraries as dependencies-

* Matplotlib
* NumPy
* SciPy
* Code2pdf (Optional, only to get your code as a pdf file)

### Installing dependencies/packages

* For Windows/Linux/Mac users

You can install these libraries using ``pip`` (if you have a virtual environment created and only want to install the libraries for that particular file/directory)

``
pip install <name of the library>
``

or Alternatively you can install using pip for your own user system-wide

``
python -m pip install --user <name of the libraries separated by a space>
``

or you could use ``conda`` (if you are using Anaconda IDE)

``
conda install <name of the library>
``

or (If you are using a Linux distribution) then you can simply use you distro's package manager to install the packages (but it will install the packages system wide)

* For Debian/Ubuntu users-

``
sudo apt install python-<name of the library>
``

* For Fedora users-

``
sudo dnf install numpy scipy python-matplotlib 
``

* For Arch users-

``
sudo pacman -S python-<package name>
``

or 

``
yay -S python-<package name>
``

Most python packages are in the ArchLinux repositories and the packages that are not are in AUR (ArchLinux User Repositories) - for these packages you have to download the PKGBUILD file and compile. After that, you have to use PACMAN to finish the installation

``
makepkg -s
``
``
sudo pacman -U 'compiled-package'
``

* For Mac users-

Mac doesn’t have a preinstalled package manager, but there are a couple of popular package managers you can install. For Python 3.5 with Macports , execute this command in a terminal:

``
sudo port install py35-numpy py35-scipy py35-matplotlib 
``

or Alternatively [Homebrew](https://brew.sh) has an incomplete coverage of the SciPy ecosystem, but does install these packages:

``
brew install numpy scipy matplotlib ipython jupyter
``


#### All the instructions related to the code are given in the code as Comments.


## Happy Coding

_______________________________________________________________________________________________________________________________
