x = [0 60 120 180 240 300 360];
y = [0 -300 800 0 -300 800 0];
syms b c k l m n;
A = [symsum(sin(2*x(b))*cos(2*x(b)),b,1,7) symsum(cos(2*x(c))*cos(2*x(c)),c,1,7) symsum(y(k)*cos(2*x(k)),k,1,7);
    symsum(sin(2*x(l))*sin(2*x(l)),l,1,7) symsum(sin(2*x(m))*cos(2*x(m)),m,1,7) symsum(y(n)*sin(2*x(n)),n,1,7)];

rref(A);