clc;clear all; close all;

st=5e-6; % amplitue do degrau de entrada
[t1,x,y1]=sim('mod9a'); % simula sistema não-linear
[t2,x,y2]=sim('mod8b'); % simula sistema linear
subplot(2,1,1)
plot(t1,y1(:,1)) % gráfico da posição da esfera
hold on
plot(t2,y2(:,1),'r')
axis([0 3 0 1e-2])
title('Posicao da esfera')


subplot(2,1,2)
plot(t1,y1(:,2)) % gráfico da corrente de entrada
hold on
plot(t2,y2(:,2),'r')
axis([0 3 0 1.5])
title('Corrente de entrada')

y1=y1(:,1); % vamos comparar apenas a posicao das esferas
y2=y2(:,1);
y2=interp1(t2,y2,t1); % interpolacao

y1=y1(end/6:end);
y2=y2(end/6:end);
EQM=sqrt(norm(y1-y2,2)/length(y1)); % erro quadratico médio
EQM/mean(abs(y1)); % percentual do erro quadratico