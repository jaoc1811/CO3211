disp('Ejercicio a)')

T1 = vander([0.5 0.6 0.7 0.8 0.9])

b1 = T1 * ones(size(T1),1)

AutoValoresT1 = eig(T1)
DeterminanteT1 = det(T1)
NumeroDeCondicionT1 = cond(T1,inf)

format long
disp('Resolucion de los sistemas')

disp('Eliminacion gaussiana sin pivoteo')

elgauss(T1,b1,0)

disp('Eliminacion gaussiana con pivoteo')

elgauss(T1,b1,1)

disp('Factorizacion LU')

LU(T1,b1)

disp('Ejercicio b)')

format short

T2 = vander([0.5 0.6 7 8 9 10 13])

b2 = T2 * ones(size(T2),1)

AutoValoresT2 = eig(T2)
DeterminanteT2 = det(T2)
NumeroDeCondicionT2 = cond(T2,inf)

format long
disp('Resolucion de los sistemas')

disp('Caso a) con n=5')

disp('Eliminacion gaussiana sin pivoteo')

elgauss(T1,b1,0)

disp('Eliminacion gaussiana con pivoteo')

elgauss(T1,b1,1)

disp('Factorizacion LU')

LU(T1,b1)
format short