# Hinton Diagram
The function [Hinton_plot.m](https://github.com/dezanche/Hinton_plot/blob/main/Hinton_plot.m) works in [Matlab](https://www.mathworks.com/products/matlab.html) or [Octave](https://octave.org/) to display a real or complex matrix using a Hinton diagram (original idea published [here](https://doi.org/10.1037/0033-295x.98.1.74)). At each position in the matrix the marker area is proportional to the absolute value of the matrix element, which allows a wide range of values to be displayed and readily interpreted. If the matrix is real and positive, the colour of all markers is the same. If not, the phase of each element modifies the colour of the corresponding marker.
The advantages of Hinton diagrams over traditional colour-mapped display (e.g., [imagesc](https://octave.sourceforge.io/octave/function/imagesc.html)) are:
- differences in magnitude of the matrix elements are more readily interpreted from the size of the markers as opposed to colour or grayscale differences
- if complex, the phase is also visualized (as a colour), which is impossible with traditional display

Examples shown below include 8x8 noise correlation and covariance matrices which are often used in MR image reconstruction from coil arrays. 
Similar functionality is available in R's [corrplot](https://cran.r-project.org/web/packages/corrplot/vignettes/corrplot-intro.html) and in Python's [matplotlib](https://matplotlib.org/stable/gallery/specialty_plots/hinton_demo.html).\
I hope you find this useful.

## Usage
```
Hinton_plot(A);
Hinton_plot(A,marker);
S = Hinton_plot(A,marker);
```
Where:
- `A` is the matrix to be displayed.
- `marker` (optional) specifies the marker type similarly to other graphical commands like [plot](https://octave.sourceforge.io/octave/function/plot.html). The default marker is a circle.

The function returns a handle (`S`) to a scatter object.

## Examples

### 50x50 random matrix (real)
```
A=2*rand(50)-1;
s=Hinton_plot(A,'s');
set(s,'markeredgecolor','k')
```
![50x50 random real matrix](https://github.com/dezanche/Hinton_plot/blob/main/Output_examples/50x50_rand.svg)

### 100x100 random matrix (complex)
![100x100 random complex matrix](https://github.com/dezanche/Hinton_plot/blob/main/Output_examples/100x100_rand.svg)

### Correlation absolute value

|Using square markers (`'s'`):|With `imagesc` only magnitude can be displayed:|
:-------------------------:|:-------------------------:
|![abs correlation](https://github.com/dezanche/Hinton_plot/blob/main/Output_examples/correlation_abs_Hinton.svg)|![abs correlation imagesc](https://github.com/dezanche/Hinton_plot/blob/main/Output_examples/correlation_abs_imagesc.png)|

### Complex covariance
Notice how differences in variance (along the diagonal) are readily identified and Hermitian symmetry is verified by looking at the phase colours.\
Markers are default circles (`'o'`).\
![complex covariance](https://github.com/dezanche/Hinton_plot/blob/main/Output_examples/covariance_Hinton.svg)

### Covariance absolute value

|Using diamonds (`'d'`):   |                          |
:-------------------------:|:-------------------------:
|![abs covariance](https://github.com/dezanche/Hinton_plot/blob/main/Output_examples/covariance_abs_Hinton.svg)|![abs covariance imagesc](https://github.com/dezanche/Hinton_plot/blob/main/Output_examples/covariance_abs_imagesc.png)|

## Contributors
Nicola De Zanche

## Licenses
Software code is licensed under the terms of the [GNU General Public License](https://www.gnu.org/licenses/gpl-3.0.en.html) as published by the Free Software Foundation, either version 3 of the License, or any later version.\
![CClicense](https://i.creativecommons.org/l/by-nd/4.0/88x31.png)\
All other original content in this repository (including this README file) is licensed under a [Creative Commons Attribution-NoDerivatives 4.0 International License](https://creativecommons.org/licenses/by-nd/4.0/).
