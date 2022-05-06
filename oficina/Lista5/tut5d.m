clear; close all; clc;

num = [1 0];
den = [1 0.1];

% (z - 0)/(z - 0.8) ou (1.z^0 + 0.z^-1)/(1.z^0 - 0.8.z^-1)
% zero: z = 0; polo: z = 0.8

figure(1);
subplot(2,1,1);     % resposta ao degrau
stepz(num, den);    % veja tambem step() e stepplot()

subplot(2,1,2);     % resposta impulsiva
impz(num,den);      % veja tambem impul() e impulseplot()