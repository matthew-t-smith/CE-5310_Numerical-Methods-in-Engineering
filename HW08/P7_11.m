% Problem 7.11
X = [1.7:0.1:2.3];
x = 2;
Y = f(X);
h = 0.1;

% common central-difference formula - O(x^2) truncation error
ii = 4;
c1 = (Y(ii+1) - Y(ii-1))/(2*h);
c2 = (Y(ii+1) -2*Y(ii) + Y(ii-1))/(h^2);
c3 = (Y(ii+2) - 2*Y(ii+1) + 2*Y(ii-1) - Y(ii-2))/(2*h^3);

% higher order central-difference formula - O(x^4) truncation error
h1 = (-Y(ii+2) + 8*Y(ii+1) - 8*Y(ii-1) + Y(ii-2))/(12*h);
h2 = (-Y(ii+2) + 16*Y(ii+1) - 30*Y(ii) + 16*Y(ii-1) - Y(ii-2))/(12*h^2);
h3 = (-Y(ii+3) + 8*Y(ii+2) - 13*Y(ii+1) + 13*Y(ii-1) - 8*Y(ii-2) + Y(ii-3))/(8*h^3);

% differences can be seen by subtracting ri from ci or hi
% r1 = 2*exp(4);
% r2 = 4*exp(4);
% r3 = 8*exp(4);

function [y] = f(z)
    y = exp(2*z);
end