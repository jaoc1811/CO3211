% Ejercicio 1

disp('Ejercicio 1')

t=0:0.01:2*pi;

% Matriz A


% Fila 1

R = 1/4;

x = R*cos(t) - 1;
y = R*sin(t) + 1;

plot(x,y,'-b')

hold on
% Fila 2

R=1/2;

x = R*cos(t) + 1;
y = R*sin(t);

plot(x,y,'-b')
hold on

% Fila 3

R = 2;

x = R*cos(t) + 3;
y = R*sin(t);

plot(x,y,'-b')
hold on

axis equal

xlabel('Reales')
ylabel('Imaginarios')


% Matriz B

figure

% Fila 1

R = 5;

x = R*cos(t) + 1;
y = R*sin(t);

plot(x,y,'-b')

hold on
% Fila 2

R= 4;

x = R*cos(t) - 2;
y = R*sin(t);

plot(x,y,'-b')
hold on

% Fila 3

R = 2;

x = R*cos(t) + 2;
y = R*sin(t);

plot(x,y,'-b')
hold on

axis equal

xlabel('Reales')
ylabel('Imaginarios')


A = [-1+i,0,1/4;1/4,1,1/4;1,1,3]

disp('Autovalores de A')

eig(A)

B = [1,3,-2;-1,-2,3;1,1,2]

disp('Autovalores de B')

eig(B)

% Ejercicio 3

disp('Ejercicio 3')

disp('Para la matriz A')

[k,x,r] = potencia(A,[1;1;1],1000,10^-6);
iteraciones = k
autovalorMaximo = r
[k,x,r] = potenciaInversa(A,[1;1;1],1000,10^-6);
iteraciones = k
autovalorMinimo = r

disp('Para la matriz B')

[k,x,r] = potencia(B,[1;1;1],1000,10^-6);
iteraciones = k
autovalorMaximo = r
[k,x,r] = potenciaInversa(B,[1;1;1],1000,10^-6);
iteraciones = k
autovalorMinimo = r




