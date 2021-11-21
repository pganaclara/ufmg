% Tendo analisado os efeitos do parametro r , queremos agora analisar o efeito das 
% condicoes iniciais. Faremos isso com outro sistema dado pela equacao
% x [k + 1] = 2x [k] mod 1

clear
close all
clc
T=10000; % periodo de simulacao
x0=[1/3;3/5;5/7;7/9;9/11];
x=[x0; x0+1e-4]; % concatenacao de vetores coluna

X=x;
for it=1:T-1
    x=mod(2*x,1)+rand*1e-8;
    X=[X x];
end

tempo=(1:T)-1;
for i=1:size(x0,1)
    subplot(size(x0,1),2,2*(i-1)+1)
    histogram(X(i,:),20)
    title(['x0=' num2str(x0(i))])
    subplot(size(x0,1),2,2*(i))
    histogram(X(i+size(x0,1),:),20)
end
print -dpng simumabitshiftmap3