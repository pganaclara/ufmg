% o objetivo do tutorial eh analisar como a dinamica populacional dada pelo
% mapa logistico se comporta em funcao do parametro r

clear
close all
clc
r=4;
T=30; % período de simulação
x=zeros(1,T); % vetor com a população inicial
x(1) = 0.95

% usa-se um vetor com 8 valores de r e simula-se cada linha do vetor x
% independentemente, de forma que cada linha corresponde a um valor de r. 
% Inicializamos uma matriz X com o vetor da populacao inicial, e a cada
% iteracao calculamos o vetor de populacao nos demais instantes de tempo.
% Outra observacao interessante eh como geramos a matriz X por meio de concatenacao de matrizes. A 
% matriz gerada e tal que cada linha contem a simulacao correspondente a um valor de 
% r e cada coluna contem a populacao nos instantes 1, 2, 3,..., 30.

for it=1:T-1
x(it+1)=r.*x(it).*(1-x(it));
end

% subplot para plotar orbitas simuladas para cada valor de r em diferentes
% graficos numa mesma figura

tempo=(1:T)-1; % ou tempo = 0:T-1
stem(tempo,x)

print -dpng simumapalogistico4