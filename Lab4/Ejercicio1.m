%Ejercicio 1.1)
disp('Ejercicio 1.1)')

% 4*T1=0+5+T3+T2        4*T1-T2-T3 = 5
% 4*T2=5+T1+T4+10       -T1+4*T2-T4 = 15
% 4*T3=T1+0+T5+T4       -T1+4*T3-T4-T5 = 0
% 4*T4=T2+T3+T6+10      -T2-T3+4*T4-T6 = 10
% 4*T5=T3+0+T7+T6       -T3+4*T5-T6-T7 = 0
% 4*T6=T4+T5+T8+10      -T4-T5+4*T6-T8 = 10
% 4*T7=T5+0+5+T8        -T5+4*T7-T8 = 5
% 4*T8=T6+T7+5+10       -T6-T7+4*T8 = 15


T = [4,-1,-1,0,0,0,0,0;-1,4,0,-1,0,0,0,0;-1,0,4,-1,-1,0,0,0;0,-1,-1,4,0,-1,0,0;0,0,-1,0,4,-1,-1,0;0,0,0,-1,-1,4,0,-1;0,0,0,0,-1,0,4,-1;0,0,0,0,0,-1,-1,4]

b=[5;15;0;10;0;10;5;15]

disp('Ejercicio 1.2)')
% Ejercicio 1.2)
% La matriz A es pentagonal pues a exepcion de la diagonal principal y las dos diagonales superiores e inferiores, todos los elementos de la matriz son iguales a cero

% Es simetrica pues la matriz es igual a su traspuesta

if T == T'
    disp('La matriz es simetrica')
end

disp('Autovalores de T')
eig(T)


% Como todos los autovalores de T son positivos, T es definida positvas

% Ejercicio 1.3)
disp('Ejercicio 1.3)')
[L,x] = cholesky(T,b);

L

disp("L*L' = ")

L*L'

% A=L*L'


% Ejercicio 1.4)
disp('Ejercicio 1.4)')


L

L'

% L es una matriz de banda pues solo la digonal principal y las dos inferiores tienen elementos distintos de cero
% L es una matriz de banda pues solo la digonal principal y las dos superiores tienen elementos distintos de cero


% Ejercio 1.5) 
disp('Ejercicio 1.5)')

x


% Prueba de tempplaca
disp('Prueba de tempplaca')

tempplaca(0,5,5,10)



