A = [1 1 6; 5 -2 1; -8 2 -3];
B = [2 9; -5 -1; 9 2];

quadrada = quad(A); % = 1, funcao eh quadrada
quadrada2 = quad(B); % = 0, funcao n eh quadrada

% a funcao find usada das formas abaixos retorna o indice da condicao
% especificada
I = find(A==2) % index = 6
I2 = find(B==2) % index = [1;6]

N = find(A < 0) % index = [3;5;9]
N2 = find(B < 0) % index = [2;5]

% uma matriz quadrada tem numero de linhas igual numero de colunas
function quadrada = quad(x)
    [linhas, colunas] = size(x)

    if(linhas == colunas) quadrada = 1
    else quadrada = 0
    end
end

