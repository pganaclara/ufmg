clear;
clc;
close all;

w=1633;
k=1.35e4;
c=0.6e3;
M=0.4617;
m=29;
r=2;
x0=0;

% calculamos a funcao de transferencia G (s) = X (s)/F (s) e plotamos a resposta em magnitude da mesma
G=tf([1],[M c k]);
figure
bodemag(G);

% a amplitude de oscilacao
amplitude=m*r*w^2*abs(freqresp(G,w));

% Calculemos o pico e a frequencia de ressonancia do sistema
ww=10.^(-2:0.01:3);
[gr,indwr]=max(abs(freqresp(G,ww)));
wr=ww(indwr);

% frequencia de ressonancia
[gr,wr]=norm(G,Inf);

% comando series para achar a contribuicao devida a entrada F(s)
F=m*r*w^2*tf([w],[1 0 w^2]);
X=series(G,F);
t=0:0.002:0.7;
xf=impulse(X,t);

% calculamos a contribuicao devida a condicao inicial:
X0=x0*tf([M c],[M c k]);
xt0=impulse(X0,t);

% Encerramos plotando a solucao obtida e calculando a amplitude de oscilacao apos o transitorio.
figure
y=xf+xt0;
plot(t,y)

%amplitude1=max(y(end/2:end));
G = minreal(G);
zpk(G)