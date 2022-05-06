clc
clear;

% Caracteristicas do motor
% Preset Model 13
Ra = 0.4832; % Resistencia de armadura
w0 = 199.1; % Velocidade a vazio
kphi = 2.51; % K phi nominal

Va = 500; % Tensão de terminal
Pmech = linspace(0,w0,100000); % Potência mecânica

Te = kphi*((Va-kphi*Pmech))/Ra;
plot(Pmech,Te,'LineWidth',2)

title('Torque x Velocidade')
ylabel('T_{mec} [N.m]')
xlabel('Velocidade [rad/s]')
grid on
hold on

kphi = 2.51*0.9; % K phi 90%
Te = kphi*((Va-Pmech*kphi))/Ra;
plot(Pmech,Te,'LineWidth',2)
hold on

kphi = 2.51*0.8; % K phi 80%
Te = kphi*((Va-Pmech*kphi))/Ra;
plot(Pmech,Te,'LineWidth',2)
hold on

kphi = 2.51*0.7; % K phi 70%
Te = kphi*((Va-Pmech*kphi))/Ra;
plot(Pmech,Te,'LineWidth',2)
legend('k\phi = 2.51','k\phi = 2.259','k\phi = 2.008','k\phi = 1.757')
hold off