clc
clear;

% Características do motor
Ra = 0.6569; % Resistência de armadura

n0 = 201.48; % Velocidade nominal
kphi=2.48;
Va = 500; % Tensão de terminal
velo = linspace(0,n0,100000);% Potência mecânica
tem = kphi*((Va-velo*kphi))/Ra;

plot(velo,tem,'LineWidth',2)
ylabel('T_{mec} [N.m]')
title('Torque x Velocidade')
xlabel('Velocidade [rad/s]')
grid on
hold on
kphi=2.48*0.9;
%velo = linspace(0,n0,100000);% Potência mecânica
tem = kphi*((Va-velo*kphi))/Ra;
plot(velo,tem,'LineWidth',2)
hold on
kphi=2.48*0.80;
%velo = linspace(0,n0,100000);% Potência mecânica
tem = kphi*((Va-velo*kphi))/Ra;
plot(velo,tem,'LineWidth',2)
hold on
kphi=2.48*0.7
%velo = linspace(0,n0,100000);% Potência mecânica
tem = kphi*((Va-velo*kphi))/Ra;
plot(velo,tem,'LineWidth',2)
legend('k\phi = 100%','k\phi = 90%','k\phi = 80%','k\phi = 70%')
hold off