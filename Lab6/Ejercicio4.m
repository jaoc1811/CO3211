% Ejercicio 4
disp('Ejercicio 4')

disp('Para l = 1')
l = 1;

A = [1,1,0;0,1,l;0,l,1]

[k,x,r] = potencia(A,[1;1;1],1000,10^-6);
Autovalores = eig(A)
autovalorMaximo = r
iteraciones = k
errorRelativo = norm(max(eig(A)) - autovalorMaximo,inf)/norm(max(eig(A)))

disp('Para l = 10^-2')
l = 10^-2;

A = [1,1,0;0,1,l;0,l,1]

[k,x,r] = potencia(A,[1;1;1],1000,10^-6);
Autovalores = eig(A)
autovalorMaximo = r
iteraciones = k
errorRelativo = norm(max(eig(A)) - autovalorMaximo,inf)/norm(max(eig(A)))

disp('Para l = 10^-8')
l = 10^-8;

A = [1,1,0;0,1,l;0,l,1]

[k,x,r] = potencia(A,[1;1;1],1000,10^-6);
Autovalores = eig(A)
autovalorMaximo = r
iteraciones = k
errorRelativo = norm(max(eig(A)) - autovalorMaximo,inf)/norm(max(eig(A)))


% Podemos apreciar que para cada caso el metodo tarda mas iteraciones para converger, ademas la solucion para el caso
% l = 10^-8 es la menos acertada teniedo solo 3 digitos de precision.
% Esto se debe a que en cada caso, los autovalores son cada vez mas parecidos. haciendo que el metodo tarde mas en converger,
% Para el tercer caso, el metodo llega a la iteracion maxima, por ello su solucion es menos acertada

