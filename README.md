# Matrix-Singular-Value-and-Norm-Analysis
A MATLAB script to analyze the singular values, norms, determinant, and condition number of various matrix types.

# Description 
This repository contains a MATLAB script that computes and visualizes the singular values of different types of matrices (rand, randn, hilb, invhilb, and 1./hilb). Additionally, it calculates important matrix properties such as norms, determinant, and condition number, providing insights into their numerical behavior.

# Code Overview
The script performs the following steps for each matrix type:
- Creates one of the following matrices with size 20x20: Random matrix with uniformly distributed entries (rand(20)). Random matrix with normally distributed entries (randn(20)). Hilbert matrix (hilb(20)). Inverse of the Hilbert matrix (invhilb(20)). Element-wise reciprocal of the Hilbert matrix (1./hilb(20)).
- Singular Value Decomposition: Computes and displays the singular values of the matrix. Plots the singular values for visualization.
- Matrix Properties: Computes and displays the 1-norm, 2-norm, Infinity-norm, determinant and condition number.

# Usage 
Run the script in MATLAB:
```matlab
% Matrix Singular Value and Norm Analysis
% Copy and paste the script into MATLAB to execute it.
```
## License
This project is licensed under the MIT License - see the LICENSE file for details.
```
Feel free to adjust any part of this README to better fit your specific needs or preferences.
