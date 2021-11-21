%Essa expressao pode ser encontrada como "damped sine wave"

A = 10; % amplitude
f = 3; % frequencia
T = 1/f; % periodo
t = [-2:T/100:2];

s = @(t) A*exp(-t*(log(0.5)/2)).*sin(2*pi*f*t); 
% o @(t) é para criar uma funcao anonima da expressao
ezplot(s,[-2,2])