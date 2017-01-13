function R = rws(U,V)
% rws         Calculates resultant wind speeds
%
% Synopsis:   R = rws(U,V)
%
% Input:      U = matrix of E/W directional wind speeds
%             V = matrix of N/S directional wind speeds
%
% Output:     R = matrix of resultant wind speed calculations
%                 in same units as input

R = sqrt(U.^2 + V.^2);
end