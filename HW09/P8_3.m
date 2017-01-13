syms x u r;
U = 10;
n = 5;
R = 0.5;
A = pi*(R^2);

% power-law equation
% u/U = (1-(r/R))^(1/n);
% u1 = U*((1-(r/R))^(1/n));

% fully developed laminar flow profile
% u/U = 1 - (r/R)^2;
% u2 = U*(1 - (r/R)^2);

U1 = u1(r);
U2 = u2(s);
T = t(x);

% two-point formula
U1 = u1(t(-1/sqrt(3))) + u1(t(1/sqrt(3)));
U2 = u2(t(-1/sqrt(3))) + u2(t(1/sqrt(3)));

function U1 = u1(r)
    U1 = ((pi*(0.5^2))/2)*10*((1-(r/0.5))^(1/5));
end

function U2 = u2(s)
    U2 = 10*(1 - (s/0.5)^2);
end

function T = t(x)
    T = ((pi*(0.5^2))/2)*x + ((pi*(0.5^2))/2);
end