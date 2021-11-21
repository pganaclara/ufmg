% o objetivo do tutorial eh analisar como a dinamica populacional dada pelo
% mapa logistico se comporta em funcao do parametro r

clear
close all
clc
r=[0.5; 1.5; 2.5; 3.2; 3.5; 3.6; 3.8; 4];
T=30; % período de simulação
x=0.95*ones(size(r)); % vetor com a população inicial

% usa-se um vetor com 8 valores de r e simula-se cada linha do vetor x
% independentemente, de forma que cada linha corresponde a um valor de r. 
% Inicializamos uma matriz X com o vetor da populacao inicial, e a cada
% iteracao calculamos o vetor de populacao nos demais instantes de tempo.
% Outra observacao interessante eh como geramos a matriz X por meio de concatenacao de matrizes. A 
% matriz gerada e tal que cada linha contem a simulacao correspondente a um valor de 
% r e cada coluna contem a populacao nos instantes 1, 2, 3,..., 30.

X=x; % x é um vetor coluna calculado para cada condicao inicial
for it=1:T-1
x=r.*x.*(1-x);
X=[X x]; % concatena coluna a cada iteracao
end

% subplot para plotar orbitas simuladas para cada valor de r em diferentes
% graficos numa mesma figura

tempo=(1:T)-1; % ou tempo = 0:T-1
for i=1:length(r)
subplot(length(r)/2,2,i)
stem(tempo,X(i,:))
title(['r=' num2str(r(i))])
end

print -dpng simumapalogistico2
fprintf('Periodo de oscilacao para r = 0.5 => 1 \n')
fprintf('Periodo de oscilacao para r = 3.5 => 4 \n')
fprintf('Periodo de oscilacao para r = 3.6 => 14 \n')
fprintf('Periodo de oscilacao para r = 4 => 8 \n')