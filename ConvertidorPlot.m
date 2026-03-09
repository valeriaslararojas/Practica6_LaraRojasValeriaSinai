%plot%
clear;clc;close all
Tsim=[0 0.002];
x0 = [0 0]; % Initial conditions for the system
[t,x]=ode45(@Convertidor, Tsim, x0);
iL=x(:,1);
Vc=x(:,2);


figure;
plot(t, iL);
xlabel('Time (s)');
ylabel('Corriente iL');
title('Corriente del inductor.');
grid on;
% Create a figure
% Plot the capacitor voltage Vc
figure;
plot(t, Vc);
xlabel('Time (s)');
ylabel('Voltaje Vc');
title('Voltaje de Salida');
grid on;