% Laboratorio


load('datos20');

n= 480;

% Descomposicion de A

D = diag(diag(A));
E = -tril(A,-1);
F = -triu(A,1);

% Calculamos los radios espectrales de H para jacobi y para gauss-seidel para confirmar si convergen al resultado.

% Redio Espectral de H para Jacobi

H1 = inv(D) * (E + F);

max(abs(eig(H1)))

% Como el radio espectral de H para Jacobi es mayor que 1, el metodo no converge en el resultado

% Radio Espectral de H para Gauss-Seidel

H2 = inv(D-E) * F;

max(abs(eig(H2)))

% Como el radio espectral de H para Gauss-Seidel es menor que 1, el metodo si converge en el resultado


% Como por Jacobi no converge, se usara solo Gauss-Seidel y LU
 
x = zeros(n,3);


% Gauss-Seidel

% Para x0= [0,...,0]
disp('Gauss Seidel')

disp('Para x0= [0,...,0]')

disp('x1')
time = cputime;
[x(1:n,1),iteraciones] = gaussseidel(A,B(1:n,1),zeros(n,1),1500,1*10^-5);
iteraciones
disp('Tiempo tomado')
tiempo = cputime - time

disp('x2')
time = cputime;
[x(1:n,2),iteraciones] = gaussseidel(A,B(1:n,2),zeros(n,1),1500,1*10^-5);
iteraciones
disp('Tiempo tomado')
tiempo = cputime - time

disp('x3')
time = cputime;
[x(1:n,3),iteraciones] = gaussseidel(A,B(1:n,3),zeros(n,1),1500,1*10^-5);
iteraciones
disp('Tiempo tomado')
tiempo = cputime - time

% Para x1 = [1,...,1]

disp('Para x1 = [1,...,1]')

disp('x1')
time = cputime;
[x(1:n,1),iteraciones] = gaussseidel(A,B(1:n,1),ones(n,1),1500,1*10^-5);
iteraciones
disp('Tiempo tomado')
tiempo = cputime - time

disp('x2')
time = cputime;
[x(1:n,2),iteraciones] = gaussseidel(A,B(1:n,2),ones(n,1),1500,1*10^-5);
iteraciones
disp('Tiempo tomado')
tiempo = cputime - time

disp('x3')
time = cputime;
[x(1:n,3),iteraciones] = gaussseidel(A,B(1:n,3),ones(n,1),1500,1*10^-5);
iteraciones
disp('Tiempo tomado')
tiempo = cputime - time

% LU

disp('LU')

time = cputime;
x = LU(A,B);
disp('Tiempo tomado')
tiempo = cputime - time



