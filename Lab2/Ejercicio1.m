
disp('Ejercicio a')
A1=[10^-8,-1,10^10;10,(10^-8)-10^7,1;1,-1,1]
A2=[4,-1,1;10^-9,10^-6,10^-9;10^-16,-10^-16,1]
b1=A1*[1;-1;1]
b2=A2*[1;-1;1]

disp('Ejercicio b')
disp('Para verificar que los sistemas de ecuaciones tienen solucion unica, basta con los determinantes de las matrices A1 y A2 sean distintos de 0')
detA1=det(A1)

detA2=det(A2)

disp('Dado que los determinantes son distintos de cero, se puede calcular la solucion de los sistemas')

disp('Como la matriz es no singular, y los vectores b son generados con la solucion exacta, la solucion es [1;-1;1]')
disp('Ejercicio c')

normaA1=norm(A1,inf);
normaA2=norm(A2,inf);

disp('Aproximacions con eliminacion gaussiana')

x1 = A1\b1;
x2 = A2\b2;
x1SinPiv = elgauss(A1,b1,0)
x1ConPiv = elgauss(A1,b1,1)

x2SinPiv = elgauss(A2,b2,0)
x2ConPiv = elgauss(A2,b2,1)

disp('Errores relativos')

ErrorRel1SinPiv = norm(x1 - x1SinPiv,inf)/(norm(x1,inf))
ErrorRel1ConPiv = norm(x1 - x1ConPiv,inf)/(norm(x1,inf))
ErrorRel2SinPiv = norm(x2 - x2SinPiv,inf)/(norm(x2,inf))
ErrorRel2ConPiv = norm(x2 - x2ConPiv,inf)/(norm(x2,inf))

disp('El error relativo de la Matriz A1 con pivoteo y de la matriz A2 con y sin pivoteo es 0 pues el resultado obtenido es el verdadero verdadero de la ecuacion')
disp('El error relativo de la matriz A1 sin pivoteo es de 1, pues la norma inf del x real menos el x obtenido es 1, sobre la norma del resultado real es 1')
disp('No es necesario usar pivoteo si se usa aritmetica exacta')
disp('El pivoteo evita la division por numeros pequeños, lo cual es una causa comun de errores')
condicionanteA1 =cond(A1,inf)
condicionanteA2 =cond(A2,inf)

MaxAutovalorA1 = max(abs(eig(A1)))
MinAutovalorA1 = min(abs(eig(A1)))
MaxAutovalorA2 = max(abs(eig(A2)))
MinAutovalorA2 = min(abs(eig(A2)))

DeterminanteA1 = detA1
DeterminanteA2 = detA2

disp('Los numeros de condicion de las matrices nos dicen que se pueden perder hasta 10 digitos de precision con A1 y 6 digitios con A2')
disp('Cuando los autovalores son muy cercanos a cero tiende a haber errores, por lo tanto no es confiable trabajar con A2')
disp('El determinante de la matriz A2 nos muestra que no es confiable trabajar con ella pues, cuando el determiante de una matriz tiende a cero esta es casi singular')

ErrorRel1SinPiv <= condicionanteA1*(norm(b1-A1*x1SinPiv,inf)/norm(b1,inf))
ErrorRel1ConPiv <= condicionanteA1*(norm(b1-A1*x1ConPiv,inf)/norm(b1,inf))
ErrorRel2SinPiv <= condicionanteA2*(norm(b2-A2*x2SinPiv,inf)/norm(b2,inf))
ErrorRel2ConPiv <= condicionanteA2*(norm(b2-A2*x2ConPiv,inf)/norm(b2,inf))