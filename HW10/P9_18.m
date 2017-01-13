% y' = 2 - 3*x + 4*y
% y(0) = 1;
syms x y
F = f(x,y);
K = firstk(x,y);
L = secondk(x,y);
M = thirdk(x,y);
N = fourthk(x,y);
Y = zeros(1,11);
Y(1) = 1;
X = linspace(0,1,10);
h = 0.1;

for i = 1:10
    Y(i+1) = Y(i) + (h/6)*(firstk(X(i),Y(i)) + 2*(secondk(X(i),Y(i))) + 2*(thirdk(X(i),Y(i))) + fourthk(X(i),Y(i)));
end



function K = firstk(x,y)
    K = f(x,y);
end

function L = secondk(x,y)
    L = f(x + (1/2)*0.1, y + (1/2)*0.1*firstk(x,y));
end

function M = thirdk(x,y)
    M = f(x + (1/2)*0.1, y + (1/2)*0.1*secondk(x,y));
end

function N = fourthk(x,y)
    N = f(x + 0.1, y + 0.1*thirdk(x,y));
end

function F = f(x,y)
    F = 2 - 3*x + 4*y;
end