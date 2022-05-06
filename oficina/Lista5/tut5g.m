clear; close all; clc;
T = 1;      % intervalo de amostragem
N = 50;     
w0 = pi/4   % frequencia rejeicao
n = 0:N;

wi = 0.3*w0;    % frequencia da entrada
x = sin(wi*n);


% especifica os polos e zeros do sistema
ro = 0.8;
K = 1;
z = [1*exp(j*w0), 1*exp(-j*w0)];    % zeros de H(z)
p = ro*z;                           % polos de H(z)

figure(1);
subplot(2,2,1);
H = zpk(z,p,K, T);  % cria funcao de transferencia
pzplot(H); axis equal % pzplot usa objetos sys gerados em zpk