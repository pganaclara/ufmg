clear 
clc
close all

wn = 1;
zeta = 1.5;
Num = [wn];
Den = [1 2*zeta*wn wn^2];
H = tf(Num, Den); % cria funcao de transferencia

t = 0:0.1:10;
figure(1)
subplot(2,2,1);
st = step(H,t); % step(H) gera um grafico default
plot(t, st); % alternativa para detalhar a figura
grid; grid minor; % grades do grafico
title(['zeta = ', num2str(zeta)]); % usa vetor de strings
xlabel('tempo [s]'); ylabel('Resposta ao degrau [ua]');

subplot(2,2,2);
impulse(H); % mais opcoes graficas com impulseplot()

subplot(2,2,3);
pzmap(H); % mais opcoes graficas com pzplot()
p = roots(Den); % calcula polos e imprime na linha de comando

subplot(2,2,4);
p_real = real(p);
hold on; grid;
scatter(p, -p_real, '+');
scatter(p, p_real, '+');
str = strcat('\zeta = ', num2str(zeta)); % usa concatenacao
text(-1.5, 0.3, str); % imprime str nas coordenadas -1.5 e 0.3