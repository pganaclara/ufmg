clear; close all; clc;

N = 50;
alfa = 0.8;
f = 1/5;
n = 0:N;
x = sin(2*pi*f*n);  % sinal de entrada
h = alfa.^n;        % resposta impulsiva
y = conv(x,h);      % calcula saida

x1 = [x zeros(1,N)];
stem(0:2*N, x1);
hold on;
stem(0:2*N, y);
legend('x', 'y');
xlabel('n');
title('calculo pela convolucao');