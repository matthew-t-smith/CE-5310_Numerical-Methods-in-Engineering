% Ask for input of probability and distribution parameters
x = input('Please input your probability of breakage followed by the b and beta properties [Pb b beta]: ');
Pb = x(1);
b = x(2);
beta = x(3);

% Relevant equations
alpha = exp(-(b/beta));
P = @(DL) 1 - exp(-(DL/alpha)^beta);
DL = alpha * nthroot((-1*log(1 - Pb)), beta);

% Ask for convergence threshold
epsilon = input('What convergence threshold would you like to use?: ');
% Solve for zeroes of probability formula
Q = bisection(P,0,1,epsilon);
fprintf('%i is the zero for the probability of breakage by use of the bisection method, and %i is the uniform lateral pressure, psf.\n', Q, DL);