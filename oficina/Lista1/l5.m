% [R ,P , K ] = residue (N , D ). Os dois vetores de entrada N e D especificam os coeficientes dos polinomios
% do numerador e denominador, respectivamente.O vetor R cont ́em os coeficientes de cada fra ̧c ̃ao parcial; o vetor 
% P contem as raizes correspondentes de cada fracao parcial. Para uma raiz repetida r vezes,
% as r fracoes parciais sao ordenadas em potencias ascendentes. Quando a
% funcao racional nao e propria, o vetor K contem os termos diretos que sao ordenados
% em potencias descendentes da variavel independente.

%letra a
[R, P, K] = residue([0 0 6 6],[1 4.59 0.5798 0]);
% R = [-1.074990420364751;-9.273405578255462;10.348395998620214]
% P = [-4.460000000000000;-0.130000000000000;0]
% K = [ ]

%letra b
[R, P, K] = residue([1 2 3],[1 2 1]);
% R = [0;2]
% P = [-1;-1]
% K = 1

%letra c
