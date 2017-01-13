%Problem 1
T1 = [0 20 40 60 80 100 127 177 227]';
T2 = [2 22 42 62 87 107 127 177 227]';
uAir = [1.720 1.817 1.911 2.002 2.091 2.177 2.294 2.493 2.701]';
uWater = [1.652 9.590 6.310 4.530 3.240 2.600 2.170 1.520 1.180]';

uAir = uAir * 10^-5;
uWater = uWater * 10^-4;
uWater(1) = uWater(1)*10;

subplot(3,1,1)
plot(T1,uAir, 'r')
hold on
plot(T2,uWater, 'b')
title('Viscosity Variations, plot')
xlabel('Temperature ({\circ}C)')
ylabel('Viscocity (kg/(m*s))')
grid on

subplot(3,1,2)
semilogy(T1,uAir, 'r')
hold on
semilogy(T2,uWater, 'b')
title('Viscosity Variations, semilogy')
xlabel('Temperature ({\circ}C)')
ylabel('Viscocity (kg/(m*s))')
grid on

subplot(3,1,3)
loglog(T1,uAir, 'r')
hold on
loglog(T2,uWater, 'b')
title('Viscosity Variations, loglog')
xlabel('Temperature ({\circ}C)')
ylabel('Viscocity (kg/(m*s))')
grid on

%I would say that semilogy creates the "best" plot because although
%    a simple plot does show the general relationship between
%    viscosities, the air viscosity becomes muted at the bottom
%    of the figure since it hugs the x-axis. The loglog function,
%    on the other hand, obscures the temperature axis logarithmically,
%    which is unneccesary. The semilogy allows for the viscosity to
%    be viewed logarithmically, which gives a clear depiction of the
%    variations while not messing with the temperature axis.