clc
clear;

% Características do motor
% Preset Model 13
Ra = 0.6569; % Resistência de armadura
n0 = 201.48; % Velocidade nominal
kphi=2.48;
Va = 500; % Tensão nominal
velo = linspace(0,n0,100000);% Potência mecânica
tem = kphi*((Va-velo*kphi))/Ra;
plot(velo,tem,'LineWidth',2)
title('Torque x Velocidade')
ylabel('T_{mec} [N.m]')
xlabel('Velocidade [rad/s]')
grid on
hold on

Va75 = 375; % Tensão de terminal
%velo = linspace(0,n0,100); % Potência mecânica
tem = kphi*((Va75-velo*kphi))/Ra;
plot(velo,tem,'LineWidth',2)
hold on

Va50 = 250; % Tensão de terminal
%velo = linspace(0,n0,100); % Potência mecânica
tem = kphi*((Va50-velo*kphi))/Ra;
plot(velo,tem,'LineWidth',2)
hold on

Va60 = 125; % Tensão de terminal
%velo = linspace(0,n0,100); % Potência mecânica
tem = kphi*((Va60-velo*kphi))/Ra;
plot(velo,tem,'LineWidth',2)
legend('Va = 500 V','Va = 375 V','Va = 250 V','Va = 125 V')
hold off