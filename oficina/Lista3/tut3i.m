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

% resposta impulsiva
subplot(2,2,2);
h = diff(y);           %h: resposta impulsiva h(t)
h1 = subs(h,t,t1);     %h1: resposta impulsiva calculada em t1
plot(t1, h1);
xlabel('tempo (s)');
ylabel('tensao saida (V)');
title('Resposta impulsiva');
grid

% resposta a um pulso retangular
Lu = 80;                          % duracao do pulso
t2 = linspace(0, R*C, Lu);        % coordenada para pulso com 100 amostras
u = ones(1, Lu);                  % u: pulso com 100 amostras, formato double
h1d = double(h1);                 % converte h1 para formato double
s = conv(u, h1d)*T;               % s: sauda por convolucao; u e h1d com mesmo formato
% multiplicacao por T: aproximacao da integral (ver roteiro)

Ls = length(s);                   % Note: Ls = length(t2) + length(h1) - 1

t3 = linspace(0,Ls*T, Ls);        % para uniformiza tamanho de subplots
subplot(2,2,3);
hold on;                          % pulso de entrada e saida serao sobrepostos
plot(t3, [u zeros(1, Ls - Lu)]);  % plota pulso de entrada

% subplot(2,2,4);
plot(t3,s);                       % plota saida
hold off;

%========== Parte 3 ====================================
% Resposta a um pulso senoidal
figure(2)

periodo = 10*R*C; dur = 10*R*C;
[x, tx] = gensig('sin', periodo, dur, T);

s = conv(x,h1d)*T;     %s: saida por convolucao; u e h1c com mesmo formato
Ls = length(s);        % Note: Ls = length(t2) + length(h1) - 1
t3 = linspace(0,Ls*T, Ls);

plot(tx,x);
hold on
plot(t3,s);
grid;
legend('entrada', 'saida');
title('Sistema de 1a. ordem');
hold off

% ======== Parte 4 ===================
% H(s) = 1/(sRC + 1)
Num = 1;
Den = [R*C 1];
H = tf(Num, Den); % veja H na linha de comando

figure(3)
subplot(2,2,1); step(H); grid;
subplot(2,2,2); impulse(H); grid;
subplot(2,2,3); pzmap(H);