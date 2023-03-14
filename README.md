# Hinton_plot
The function [Hinton_plot.m](https://github.com/dezanche/Hinton_plot/blob/main/Hinton_plot.m) works in Matlab or Octave to display a real or complex matrix using a Hinton diagram (original idea published [here](https://doi.org/10.1037/0033-295x.98.1.74)).
The advantages of Hinton diagrams over traditional color-mapped display (e.g., imagesc) are:
- differences in magnitude of the matrix elements are more readily interpreted from the size of the markers as opposed to colour or grayscale differences
- if complex, the phase is also visualized (as a colour), which is impossible with traditional display\
Examples are shown below for 8-dimensional noise correlation and covariance matrices which are often used in MR image reconstruction. 
Similar functionality is available in R's [corrplot](https://cran.r-project.org/web/packages/corrplot/vignettes/corrplot-intro.html) and in Python's [matplotlib](https://matplotlib.org/stable/gallery/specialty_plots/hinton_demo.html).

## Examples
### Complex correlation
![complex correlation]()
### Correlation absolute value
![abs correlation]()

## Contributors
Nicola De Zanche.

## Licenses
Software code is licensed under the terms of the [GNU General Public License](https://www.gnu.org/licenses/gpl-3.0.en.html) as published by the Free Software Foundation, either version 3 of the License, or any later version.\
![CClicense](https://i.creativecommons.org/l/by-nd/4.0/88x31.png)\
All other original content in this repository (including this README file) is licensed under a [Creative Commons Attribution-NoDerivatives 4.0 International License](https://creativecommons.org/licenses/by-nd/4.0/).
