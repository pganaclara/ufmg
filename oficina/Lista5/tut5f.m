clear; close all; clc;

N = 50;
alfa = 0.8;
f = 1/10;
n = 0:N;
x = sin(2*pi*f*n);  % sinal de entrada

Num = 1;
Den = [1 -alfa];

h = alfa.^n;        % resposta impulsiva
y = filter(Num, Den, x);

stem(n,x);
hold on;
stem(n,y);
legend('x', 'y');
xlabel('n');
title('Calculo pela equacao a diferencas finitas');