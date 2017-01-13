% Evaluate the integral
%     I = integral(integral((x*y^2 - 8*x^3 + 5*(x^2)*y)*dx*dy,-1,4),1,3);
% using the two-point Gauss-quadrature rule.

syms x y s t;
F = f(x,y);
A = a(s);
B = b(t);

% ThreePoint = (5/9)*f(a(-sqrt(3/5)), b(-sqrt(3/5))) + (8/9)*f(a(0), b(0)) + (5/9)*f(a(sqrt(3/5)), b(sqrt(3/5)));
TwoPoint = f(a(-1/sqrt(3)), b(-1/sqrt(3))) + f(a(1/sqrt(3)), b(1/sqrt(3)));


function F = f(x,y)
    F = (5/2)*(x*(y^2) - 8*(x^3) + 5*(x^2)*y);
end

function A = a(s)
    A = s + 2;
end

function B = b(t)
    B = (5/2)*t + (3/2);
end