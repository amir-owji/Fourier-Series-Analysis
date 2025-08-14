# Fourier-Series-Analysis

This project, developed for the Signals and Systems course, computes the Fourier series coefficients of periodic real signals and reconstructs them using the synthesis formula in MATLAB. Three different implementations are provided to analyze and visualize the results.

#Repository Structure
signal_project_1 : Computes coefficients for ( \cos(3t) + \frac{\sin(t)}{2} ), reconstructs the signal for ( m = 1, 2, 3, 4, 5, 10, 20, 100 ), and plots the signal and error.

signal_project_2 : Analyzes a piecewise signal using numerical integration for coefficients and reconstructs it.

signal_project_3 :  Computes coefficients for a triangular-like signal and visualizes reconstruction with increasing harmonics (up to 20).


Key Features





Code 1: Uses trapz for numerical integration to compute coefficients and reconstructs the signal ( \cos(3t) + \frac{\sin(t)}{2} ). Plots show the original signal (green), reconstructed signal (blue), and error (red) for various ( m ).



Code 2: Implements a piecewise signal with numerical integration for coefficients and reconstructs it using a loop over harmonics.



Code 3: Defines a triangular-like signal and computes coefficients using cosine and sine terms, with animated plotting for harmonics 1 to 20.






Visualization: Plots demonstrate how increasing harmonics improves reconstruction accuracy and reduces error.





Sample Outputs

![untitled3](https://github.com/user-attachments/assets/4941894f-3e6f-46f1-97fd-6d2d42c5ec5e)
![untitled2](https://github.com/user-attachments/assets/f1330eec-0836-41d5-9e2a-154756f3f48f)
![untitled](https://github.com/user-attachments/assets/4455a94d-095b-4346-bb10-005e8235a07c)



Notes





Each script is independent and analyzes a different signal. Modify the input signal in each script if needed.



Code 3 includes an animated plot (pause of 0.1 seconds per harmonic) for better visualization.



Higher harmonics (e.g., ( m=100 )) may require more computation time but yield better reconstruction.

