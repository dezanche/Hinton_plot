# Hinton Diagram
The function [Hinton_plot.m](https://github.com/dezanche/Hinton_plot/blob/main/Hinton_plot.m) works in Matlab or Octave to display a real or complex matrix using a Hinton diagram (original idea published [here](https://doi.org/10.1037/0033-295x.98.1.74)). At each position in the matrix the marker area is proportional to the absolute value of the matrix element, which allows a wide range of values to be displayed and readily interpreted. If the matrix is real and positive, the colour of all markers is the same. If not, the phase of each element modifies the colour of the corresponding marker.
The advantages of Hinton diagrams over traditional colour-mapped display (e.g., imagesc) are:
- differences in magnitude of the matrix elements are more readily interpreted from the size of the markers as opposed to colour or grayscale differences
- if complex, the phase is also visualized (as a colour), which is impossible with traditional display

Examples are shown below for 8x8 noise correlation and covariance matrices which are often used in MR image reconstruction from coil arrays. 
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
### Complex correlation
Default circles (`'o'`):\
![complex correlation](https://github.com/dezanche/Hinton_plot/blob/main/Output_examples/correlation_Hinton.svg)
### Correlation absolute value
Using square markers (`'s'`):\
![abs correlation](https://github.com/dezanche/Hinton_plot/blob/main/Output_examples/correlation_abs_Hinton.svg)\
In a traditional display the phase is not displayed:\
![abs correlation imagesc](https://github.com/dezanche/Hinton_plot/blob/main/Output_examples/correlation_abs_imagesc.png)
### Complex covariance
Notice how differences in variance (along the diagonal) are readily identified:\
![complex covariance](https://github.com/dezanche/Hinton_plot/blob/main/Output_examples/covariance_Hinton.svg)
### Covariance absolute value
Using diamonds (`'d'`):\
![abs covariance](https://github.com/dezanche/Hinton_plot/blob/main/Output_examples/covariance_abs_Hinton.svg)\
![abs covariance imagesc](https://github.com/dezanche/Hinton_plot/blob/main/Output_examples/covariance_abs_imagesc.png)

## Contributors
Nicola De Zanche

## Licenses
Software code is licensed under the terms of the [GNU General Public License](https://www.gnu.org/licenses/gpl-3.0.en.html) as published by the Free Software Foundation, either version 3 of the License, or any later version.\
![CClicense](https://i.creativecommons.org/l/by-nd/4.0/88x31.png)\
All other original content in this repository (including this README file) is licensed under a [Creative Commons Attribution-NoDerivatives 4.0 International License](https://creativecommons.org/licenses/by-nd/4.0/).
