clear;
close all;
clc;

syms n z
h = [0 1 2 3 2 1 0];    % h[n] representa uma resposta impulsiva
n = 0: length(h)-1;     % n e sym por ser funcao de x
stem(n, h); xlabel('n');
H = sum(h.*(z.^-n));    % Que equacao e implementada aqui?
pretty(H);