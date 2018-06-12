% Ejercicio 5
A = [-149,-50,-154;537,180,546;-27,-9,-25]


% Calculo de los discos de Gershgorin para buscar un buen u para el metodo de potencia inversa desplazado
t=0:0.01:2*pi;

% Fila 1

R = 50+154;

x = R*cos(t) - 149;
y = R*sin(t);

plot(x,y,'-b')

hold on
% Fila 2

R=537+546;

x = R*cos(t) + 180;
y = R*sin(t);

plot(x,y,'-b')
hold on

% Fila 3

R = 27+9;

x = R*cos(t) - 25;
y = R*sin(t);

plot(x,y,'-b')
hold on

axis equal

xlabel('Reales')
ylabel('Imaginarios')

% Autovalor 1

[k,x,r] = potenciaInversaDesplazada(A,[1;1;1],1000,10^-6,-200);

autovalor1 = r
autovectorAsociado = x

% Autovalor 2
[k,x,r] = potenciaInversaDesplazada(A,[1;1;1],1000,10^-6,180);

autovalor2 = r
autovectorAsociado = x

% Autovalor 3
[k,x,r] = potenciaInversaDesplazada(A,[1;1;1],1000,10^-6,10);

autovalor3 = r
autovectorAsociado = x

AutovaloresConEig = eig(A)
