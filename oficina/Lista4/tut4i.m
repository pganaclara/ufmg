clear
clc
close all
[re, im] = meshgrid(-1:0.02:1); % pontos da grade no plano s
s = re + j*im; % vetor (complexo) com os pontos
zeta = 0.1; % fator de amortecimento
wn = .5; % frequencia natural
% Valor absoluto de H(s)
ModH = abs(wn^2 ./(s.^2 + 2*zeta*wn.*s + wn^2));

mesh(re, im, ModH); % plota superficie
xlabel('re{s} = sigma'); ylabel('imag{s} = j\omega');
title('Magnitude de H(s)');

Den = [1 2*zeta*wn wn^2];;
p = roots(Den);