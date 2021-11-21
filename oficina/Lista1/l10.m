syms x;
f = x^4+ 3*x^3+x+5
% diff calcula a diferenca entre elementos adjacentes ao elemento indicado
% junto com o vetor de 1 dimensao no qual o tamanho n eh 1

% pretty imprime o elemento indicado em um formato que se assemelha ao
% formato matematico

d = diff(f)
pretty(d)

d2 = diff(d)
pretty(d)