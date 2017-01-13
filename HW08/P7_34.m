%Problem 7.34

% given constants
E = 30*10^6;
v = 0.3;
b = 8;
a = 4;
t = 0.1;
h = 0.25;
delta = 0.1;
D = 0:0.025:0.2;
alpha = b/a;

C1 = (1/2).*(D./t).^3 - ((3*h)/(2*t)).*(D./t).^2 + (1 + (h^2)/(t^2)).*(D./t);
C2 = pi * ((alpha+1)/(alpha-1) - (2/log(alpha)))*(alpha/(alpha-1))^2;

% load-deflection relation for the belleville spring
P = (C1*C2*E*(t^4))/((1-(v^2))*b^2);

% higher order central-difference formula for first derivative
ii = 5;
k = (-P(ii+2) + 8*P(ii+1) - 8*P(ii-1) + P(ii-2))/(12*0.25);