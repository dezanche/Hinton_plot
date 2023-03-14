% plot Hinton diagram of matrix values
% usage: Hinton_plot(A,marker)
% where A is a matrix
% specify marker type (optional) just like plot command
% marker area is proportional to the absolute value of the matrix entry at that position
% if A is not real and positive, the phase modifies the color of the marker

% works both in Octave and Matlab
% see DOI:10.1037//0033-295x.98.1.74 and matplotlib
% ©2023 Nicola De Zanche

%This program is free software: you can redistribute it and/or modify
%it under the terms of the GNU General Public License as published by
%the Free Software Foundation, either version 3 of the License, or any later version.

%This program is distributed in the hope that it will be useful,
%but WITHOUT ANY WARRANTY; without even the implied warranty of
%MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%GNU General Public License for more details.

%You should have received a copy of the GNU General Public License
%along with this program.  If not, see <https://www.gnu.org/licenses/>.

function s = Hinton_plot(A,marker)
  if nargin == 1
    marker = "o";
  end
  matsize= size(A);
  scaling = 1500/max(max(abs(A)));   % to adjust marker size appropriate for correlation
  % 1500 for circle, 2000 diamond, 1000 square
  H = gcf();                             % use current figure or create new one
  set(H,'Name',['Hinton diagram: ' inputname(1)]);  % blank name if input is an expression
  [i,j]= meshgrid(1:matsize(1),1:matsize(2));
  if isreal(A)&&(A>=0)   % real and >ve elements
    s = scatter(i(:),j(:),scaling*abs(A(:)),"filled",marker);
  else                  % otherwise indicate phase
    s = scatter(i(:),j(:),scaling*abs(A(:)),angle(A(:)),'filled',marker);
    caxis([-pi, pi]);   % always use full phase range
    colormap hsv;   %cyclic colormap to display phase
    colorbar;
  end
  axis ij
  axis([0 1+matsize(1) 0 1+matsize(2)]);
  end
