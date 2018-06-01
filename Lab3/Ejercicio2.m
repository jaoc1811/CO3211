disp('Ejercicio a)')

disp('Caso a)')

disp('n=5')
v1 = NaN(1,5);

for i=1:5
    v1(i)=1/i;
end

v1

T1 = toeplitz(v1)

b1 = T1 * ones(size(T1),1)

AutoValoresT1 = eig(T1)
DeterminanteT1 = det(T1)
NumeroDeCondicionT1 = cond(T1,inf)

disp('n=25')


v2 = NaN(1,25);

for i=1:25
    v2(i)=1/i;
end

v2

T2 = toeplitz(v2)

b2 = T2 * ones(size(T2),1)

AutoValoresT2 = eig(T2)
DeterminanteT2 = det(T2)
NumeroDeCondicionT2 = cond(T2,inf)

disp('Caso b)')

v3 = [-3,-2,-1,0.01,1,2,3]

T3 = toeplitz(v3)

b3 = T3 * ones(size(T3),1)

AutoValoresT3 = eig(T3)
DeterminanteT3 = det(T3)
NumeroDeCondicionT3 = cond(T3,inf)

format long
disp('Ejercicio b)')

disp('Caso a) con n=5')

disp('Eliminacion gaussiana sin pivoteo')

elgauss(T1,b1,0)

disp('Eliminacion gaussiana con pivoteo')

elgauss(T1,b1,1)

disp('Factorizacion LU')

LU(T1,b1)

disp('Caso a) con n=25')

disp('Eliminacion gaussiana sin pivoteo')

elgauss(T2,b2,0)

disp('Eliminacion gaussiana con pivoteo')

elgauss(T2,b2,1)

disp('Factorizacion LU')

LU(T2,b2)

disp('Caso b)')

disp('Eliminacion gaussiana sin pivoteo')

elgauss(T3,b3,0)

disp('Eliminacion gaussiana con pivoteo')

elgauss(T3,b3,1)

disp('Factorizacion LU')

LU(T3,b3)
format short