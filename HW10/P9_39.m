% A*y'' + B*y' + C*y = 0;

A = 1;
B = -20;
C = 50;

D = B^2 - 4*A*C;

syms r1 r2 x c1 c2

% Since D > 0, two solutions are y1 = exp(r1*x) & y2 = exp(r2*x), 
%   where r1 and r2 are roots of A*r^2 + B*r + C = 0
y1 = exp(r1*x);
y2 = exp(r2*x);

% The general solution would then be y = c1*y1 + c2*y2 for arbitrary
%   constants c1 and c2
y = c1*y1 + c2*y2;


% Characteristic equation would be r^2 - 20*r + 50 = 0 whose roots are
%   r1 = 5*(sqrt(2) + 2) and r2 = -5*(sqrt(2) - 2)
CharEq = r^2 - 20*r + 50 == 0;
r1 = 5*(sqrt(2) + 2);
r2 = -5*(sqrt(2) - 2);

% Solution:
y = c1*exp(r1*x) + c2*exp(r2*x)