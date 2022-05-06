clear; clc; close all;

fs = 8000;     % T = 1/fs
f0 = 1500;     % frequencia do pico, Hz
BW = 3000;      % largura de faixa do pico, Hz
Q = f0/BW;     % fator de merito

sigma = -pi*f0/Q;      % amortecimentos (plano s)
r = exp(sigma/fs);     % raios dos polos (plano z)
teta = 2*pi*f0/fs;     % angulos (frez), (plano z)

figure(1);

% TEMPO DISCRETO (d)
zd = [0 0];     % 2 zeros na origem para causalidade
pd = [r*exp(j*teta), r*exp(-j*teta)];

numd = poly(zd);
dend = poly(pd);

subplot(1,2,1);
[Hw, w] = freqz(numd, dend, 500, fs); % 500 pontos do espectro
ModH = abs(Hw);                       % modulo
plot(w, 20*log10(ModH/max(ModH)));    % modulo normalizado

title('Sistema de tempo discreto');
ylabel('Magnitude (dB)'); xlabel('frequencia (Hz)');

subplot(1,2,2);
H = zpk(zd,pd,1,1/fs);
pzplot(H); axis equal;
title('plano z'); xlabel('re'); ylabel('im');