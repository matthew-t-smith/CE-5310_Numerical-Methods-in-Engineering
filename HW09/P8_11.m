% a) Trapezoidal rule
% The result is off by 0.0001
h = pi/3;
x = linspace(0,2*pi,7);
T = (h/2)*(f(x(1)) + 2*f(x(2)) + 2*f(x(3)) + 2*f(x(4)) + 2*f(x(5)) + 2*f(x(6)) + f(x(7)));

% b) Simpson's 1/3 rule
% Like the Trapezoidal rule, the result is off by 0.0001
S = (h/3)*(f(x(1)) + 4*f(x(2)) + 2*f(x(3)) + 4*f(x(4)) + 2*f(x(5)) + 4*f(x(6)) + f(x(7)));

% c) Simpson's 3/8 rule
% Here is where the results get further off, specifically 0.3927
SS = ((3*h)/8)*(f(x(1)) + 3*f(x(2)) + 3*f(x(3)) + 2*f(x(4)) + 3*f(x(5)) + 3*f(x(6)) + f(x(7)));

% d) Gauss-Legendre quadrature formula
% Closer than Simpson's 3/8 rule (0.0045), but it still isn't as exact as
% the first two rules here.
G = pi*(0.17132*(f(y(0.93246)) + f(y(-0.93246))) + 0.36076*(f(y(0.66120)) + f(y(-0.66120))) + 0.46791*(f(y(0.23861)) + f(y(-0.23861))));

function F = f(x)
    F = (cos(x))^2;
end

function Y = y(r)
    Y = pi*r + pi;
end