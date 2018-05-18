

A1=[10^-8,-1,10^10;10,(10^-8)-10^7,1;1,-1,1];
A2=[4,-1,1;10^-9,10^-6,10^-9;10^-16,-10^-16,1];
b1=A1*[1;-1;1];
b2=A2*[1;-1;1];

% Para verificar que los sistemas de ecuaciones tienen solucion unica, basta con los determinantes de las matrices
% A1 y A2 sean distintos de 0
detA1=det(A1)

detA2=det(A2)

% Dado que los determinantes son distintos de cero, se puede calcular la solucion de los sistemas

normaA1=norm(A1,inf);
normaA2=norm(A2,inf);


x = [1,-1,1]
x1SinPiv = elgauss(A1,b1,0)
x1ConPiv = elgauss(A1,b1,1)

x2SinPiv = elgauss(A2,b2,0)
x2ConPiv = elgauss(A2,b2,1)

ErrorRel1SinPiv = norm(x - x1SinPiv,inf)/(normaA1)
ErrorRel1ConPiv = norm(x - x1ConPiv,inf)/(normaA1)
ErrorRel2SinPiv = norm(x - x2SinPiv,inf)/(normaA2)
ErrorRel2ConPiv = norm(x - x2ConPiv,inf)/(normaA2)

condicionanteA1 =cond(A1,inf)
condicionanteA2 =cond(A2,inf)

AutovaloresA1 = eig(A1)
AutovaloresA2 = eig(A2)

ErrorRel1SinPiv <= condicionanteA1*(norm(b1-A1*[x1SinPiv(1);x1SinPiv(2);x1SinPiv(3)],inf)/norm(b1,inf))
ErrorRel1ConPiv <= condicionanteA1*(norm(b1-A1*[x1ConPiv(1);x1ConPiv(2);x1ConPiv(3)],inf)/norm(b1,inf))
ErrorRel2SinPiv <= condicionanteA2*(norm(b2-A2*[x2SinPiv(1);x2SinPiv(2);x2SinPiv(3)],inf)/norm(b2,inf))
ErrorRel2ConPiv <= condicionanteA2*(norm(b2-A2*[x2ConPiv(1);x2ConPiv(2);x2ConPiv(3)],inf)/norm(b2,inf))