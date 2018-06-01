A1 = [1.012,-2.132,3.1041;-2.132,4.096,-7.013;3.1040,-7.013,0.014]

b1 = [1.984;-5.049;-3.895]

A2 = [6,2,1,-1;2,4,1,0;1,1,4,-1;-1,0,-1,3]

b2=[0.0;7.0;-1.0;-2.0]

disp('Ejercicio 2.1)')

% Ejercicio 2.1)

disp('Autovalores A1')
eig(A1)

disp('Traspuesta A1')
A1'

% Dado que no todos los autovalores de A2 son positivos, A2 no es definida positiva
% Por lo tantu, aunque sea simetrica, pues A2 = A2', no es posible realizar una descomposicion 
% de cholesky 

disp('Autovalores A2')
eig(A2)

disp('Traspuesta A2')
A2'


% Como todos los autovalores de A2 son postivos, A2 es definida positiva y
% Como A2 es simetrica, pues A2 es igual a su traspuesta, se puede descomponer usando Cholesky

% Ejercicio 2.2)
disp('Ejercicio 2.2)')

[L2,x2] = cholesky(A2,b2);

L2

disp('Ejercicio 2.3)')
% Ejercicio 2.3)

[L1,U1,x1] = LU(A1,b1);

L1

U1


% Ejercicio 2.4)
disp('Ejercicio 2.4)')

disp('A1*x1=b1')
x1

disp('A2*x2=b2')
x2

% Ejercicio 2.5)
% Esto ya fue respondido antes, pues para poder hacer descomposicion por cholesky la matriz debe ser simetrica y definida positiva
% por lo tanto la matriz A2 es definida por poder descomponerse usando cholesky, mientras que A1 no lo es,
% pues no puede descomponerse usando cholesky
