close all
clear
clc

Ts=0.01;
t=1:Ts:20;
x=zeros(1, length(t)); % sinal no tempo
x(5)=0.9;
X=fft(x); % transformada

N=length(t);
f=(0:(N-1))/(N*Ts); % compare com a expressão do tutorial
figure
subplot(2,1,1)
plot(f,abs(X)); % gráfico de magnitude
ylabel('|X|')
subplot(2,1,2)
plot(f,angle(X)*180/pi); % gráfico de fase
xlabel('f [Hz]')
ylabel('\angle X [deg]')

figure
plot(t,x)
xlabel('t [s]')
ylabel('x(t)')