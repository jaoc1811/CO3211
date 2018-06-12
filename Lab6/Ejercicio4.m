% Ejercicio 4
disp('Ejercicio 4')

disp('Para l = 1')
l = 1;

A = [1,1,0;0,1,l;0,l,1]

[k,x,r] = potencia(A,[1;1;1],1000,10^-6);
autovalorMaximo = r
iteraciones = k
errorRelativo = norm(max(eig(A)) - autovalorMaximo,inf)/norm(max(eig(A)))

disp('Para l = 10^-2')
l = 10^-2;

A = [1,1,0;0,1,l;0,l,1]

[k,x,r] = potencia(A,[1;1;1],1000,10^-6);
autovalorMaximo = r
iteraciones = k
errorRelativo = norm(max(eig(A)) - autovalorMaximo,inf)/norm(max(eig(A)))

disp('Para l = 10^-8')
l = 10^-8;

A = [1,1,0;0,1,l;0,l,1]

[k,x,r] = potencia(A,[1;1;1],1000,10^-6);
autovalorMaximo = r
iteraciones = k
errorRelativo = norm(max(eig(A)) - autovalorMaximo,inf)/norm(max(eig(A)))

