syms x;
f = (x*x - 1)*(x - 2)*(x - 3);

% o expand multiplica todos parenteses na funcao dada e simplifica alguns
% inputs aplicando identidades conhecidas.
expand(f)

% factor retorna todos fatores irreduziveis do elemento dado no vetor,
% retorna a fatorizacao prima do elemento. Caso seja uma expressao
% simbolica ele retorna subexpressoes que sao fatores de x
factor(f)