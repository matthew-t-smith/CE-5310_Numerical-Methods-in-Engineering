function [H,X,Y] = mphconv(volt)
% mphconv     Converts inputed units to mph
%
% Synopsis:   [H,X,Y] = mphconv(volt)
%
% Input:      volt = matrix of raw voltage output from sonic anemometers,
%                    broken into U, V data by height
%
% Output:     H = matrix of U, V voltage data converted to wind
%                 speed in mph
%             X = matrix of U-directional values (E/W)
%             Y = matrix of V-directional values (N/S)

H = (volt - 2) .* 45;
X = H(:,1:2:end);
Y = H(:,2:2:end);
end