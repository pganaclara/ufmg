%====== Parte 1 ====================
% equacao diferencial/resposta ao degrau

clear         % limpa workspace
clc           % limpa memoria da janela de comando
close all     % fecha figuras abertas

R = 1e3;      % resistencia, ohm
C = 100e-9;   % capacitancia, farad, RC = 100 microsegundos
T = 1e-6;     % intervalo de discretizacao para plotar graficos

syms y(t)     % define a variavel symbolica
Dy = diff(y); % D: dy(t)/dt

% resolve a equacao com entrada x(t) = 1 (degrau) e cond iniciais nulas
y = dsolve(1 == R*C*Dy + y, y(0)==0);

t1 = 0: T: 5*R*C;    % t1: vetor com coordenadas temporais
y1 = subs(y, t, t1); % y1: resposta calculada nos instantes em t1

figure(1);
subplot(2,2,1);      % figure(1): formato 2x2, 4 paines
plot(t1,y1);
xlabel('tempo (s)');
ylabel('tensao saida (V)');
title('Resposta ao degrau');
grid