%Problem 2
x = [0:0.001:2.5];
y = 5*x.*exp(-3*x);
xm = [0.010 0.223 0.507 0.740 1.010 1.220 1.530 1.742 2.100];
ym = [0.102 0.620 0.582 0.409 0.312 0.187 0.122 0.081 0.009];
dy = [0.0053 0.0490 0.0671 0.0080 0.0383 0.0067 0.0417 0.0687 0.0589];

plot(x,y, 'r')
hold on
errorbar(xm,ym,dy, '-ob')
title('Errorbar Plot')
xlabel('x-axis')
ylabel('y-axis')

legend('Theoretical','Measured')