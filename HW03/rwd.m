function D = rwd(U,V)
% rwd         Calculates resultant wind directions based on 
%             N = 0 degrees, E = 90 degrees, S = 180 degrees
%             W = 270 degrees
%
% Synopsis:   D = rwd(U,V)
%
% Input:      U = matrix of E/W directional wind speeds
%             V = matrix of N/S directional wind speeds
%
% Output:     D = matrix of resultant wind direction calculations
%                 in degrees off of N = 0 degrees

D = atand(V ./ U) .* (-1);
end