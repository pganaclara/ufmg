% usados para limpar as variaveis do workspace, fechar as figuras abertas
% e limpar a linha de comando.
clear
close all
clc

r=2.7;
T=30; % periodo de simulacao
x=zeros(1,T); % vetor de zeros
x(1)=0.95; % populacao inicial (matlab nao trabalha com indice zero)

% loop para calcular valores da populacao no tempo 2 a 30
for it=1:T-1
x(it+1)=r*x(it)*(1-x(it));
end

% usamos funcao stem para plotar sinais discretos
tempo=(1:T)-1; % o tempo inicial e zero
stem(tempo,x)
xlabel('tempo') % dando nome aos eixos
ylabel('populacao')

% metodo plot deve ser evitado porque interpolaria entre os valores de
% tempo discreto.

% compara-se a solucao com o valor no ponto de equilibrio populacional.
% Traca uma reta indicando o valor de equilibrio sobre o grafico anterior

xeq=1-1/r;
hold on % mantem o grafico anterior ao plotarmos a nova curva
plot(tempo,xeq*ones(length(tempo),1),'r') % plota reta em vermelho
legend('simulacao', 'equilibrio')
axis([-1 31 0 1]) %vajustar os eixos
saveas(gcf, simulamapalogistico, 'fig') % Salvamos a figura gerada no arquivo de Matlab simulamapalogistico.fig,
print -dpng simulamapalogistico