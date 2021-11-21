% Sistema de 1a. ordem em tempo discreto
close all
clear
clc

alfa = 0.1;
y_ant = 0;      % memoriza saida anterior
N = 1000;      % horizonte de simulacao
f1 = 1/40;      % freq de interesse
A1 = 1;         % amplitude do sinal de interesse
f2 = 1/5;       % freq do ruido a ser filtrado
A2 = 0.5;       % amplitude do ruido a ser filtrado
fs = 10e3;      % freq de amostragem (para reproducao)
t = 0:N-1;

x = A1*cos(2*pi*t*f1) + A2*sin(2*pi*t*f2);  % entrada
y = linspace(1,N); % saida

% implementacao equacao a diferencas
for i=1:N
   y(i)= alfa*x(i)+(1-alfa)*y_ant;
   y_ant = y(i);
end

figure(1);
subplot(2,1,1);
hold on
plot(x); plot(y);
xlabel('n');
legend('x[n]', 'y[n]'); title('Equacao a diferencas finitas');
hold off

% usa funco filter; consulte o help
a = 1;
b = [alfa (1-alfa)];
y2 = filter(b,a,x);
subplot(2,1,2);

hold on
plot(x); plot(y);
xlabel('n');
legend('x[n]', 'y[n]'); title('Funcao filter()');
hold off