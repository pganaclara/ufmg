clear;
clc;
close all;

% Comecamos definindo os parametros numericos de nosso motor.
La=1;
Ra=1;
J=10;
c=1;
Kma=0.1;
Kb=1;

% Definimos as funcoes de transferencia dos três blocos superiores e a do bloco de realimentacao.
G1=tf([1/La],[1 Ra/La]);
G2=tf(Kma,1);
G3=tf([1/J],[1 c/J]);
H=tf(Kb,1);

% Td = 0, usamos o comando feedback para encontrar a função de transferencia T(s) entre ω(s) e Va(s)
G1=ss(G1);
T(1,1)=zpk(feedback(series(series(G1,G2),G3),H));

% Va = 0, obtemos a função de transferência entre ω(s) e Td
T(1,2)=zpk(feedback(G3,-H*G1*G2,1))
%pause

% desta vez usamos o operador * para obter a conexao em serie.
% segundo o Help do matlab ele eh usado para conectar modelos LTI em series

% diagramas de bode = representam a resposta em frequencia do sistema em escala logaritmica
bode(T)
grid

% vamos obter a mesma funcao de transferencia T usando o comando connect, que pode ser usado para diagramas de blocos bem mais complexos que um loop de realimentacao negativa.
G1=[G1 -G1];
G1.inputname={'Va','Vb'};
G1.outputname='Ia';

% Usamos as propriedades inputname e outputname para identificar as entradas e saidas nominalmente.
G2.inputname={'Ia'};
G2.outputname='Tm';

% De forma analoga, unimos o terceiro bloco ao somador que o precede:
G3 = [G3 G3];
G3.inputname={'Tm','Td'};
G3.outputname='w';
H.inputname='w';
H.outputname='Vb';

% as entradas e saidas de mesmo nome serao conectadas:
T = connect(G1, G2, G3, H, {'Va','Td'}, 'w')

% indicar as variaveis de entrada e de saida do sistema resultante.
zpk(T)
%pause

% Quando executar o arquivo, você observara que T (1, 1)tem um polo e um zero identicos. Isso acontece porque em geral o Matlab nao cancela polos e zeros automaticamente. Para realizar o cancelamento, utilizamos o comando minreal:
T = minreal(T);
zpk(T)

% Para visualizar as propriedades do sistema T , usamos o comando get
get(T)