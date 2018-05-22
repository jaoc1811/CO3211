function f = hilbert(n)
  A=zeros(n);
  H=zeros(n,1);
  for i=1:n
    H(i)=1;
    for j=1:n
      A(i,j)=1/(i+j-1);
    end
  end

disp('Para')
n
  
A
b=A*H
disp('Solucion x=A\b')
x = A\b
disp('Solucion algoritmo programado')
x = elgauss(A,b,0)

disp('Norma infinita del vector residual')
r = b - A*x;
norm(r,inf)

disp('Norma infinita del vector error')
deltax = x - H;
norm(deltax,inf)
