a = 1;
b = 2;
c = 3;
d = 4;

M = [a b; c d];

%determinante
d = det(M)
% d = -2

%inversa
i = inv(M)
% i = [-2.000000000000000,1.000000000000000;1.500000000000000,-0.500000000000000]

%traco
t = trace(M)
% t = 5
