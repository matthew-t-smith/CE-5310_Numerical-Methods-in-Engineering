function [S,X,Y] = mpsconv(volt)
% mpsconv     Converts inputed units to m/s
%
% Synopsis:   [S,X,Y] = mpsconv(volt)
%
% Input:      volt = matrix of raw voltage output from sonic anemometers,
%                    broken into U, V data by height
%
% Output:     S = matrix of U, V voltage data converted to wind
%                 speed in m/s
%             X = matrix of U-directional values (E/W)
%             Y = matrix of V-directional values (N/S)

S = (volt - 2) .* 20;
X = S(:,1:2:end);
Y = S(:,2:2:end);
end