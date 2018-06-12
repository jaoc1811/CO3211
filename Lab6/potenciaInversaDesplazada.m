function [k,x,r] = potenciaInversaDesplazada(A,x,itmax,tolerancia,u)

B = A - u*eye(3) ;

[L,U] = LU(B);

for k=1:itmax

      aux = sustadel(L,x);
      y = sustatras(U,aux);
      
      r = y(1)/x(1);
     
      if norm(x - y/norm(y,inf),inf) < tolerancia
            r = 1/r + u;
            return 
      end
      
      x = y / norm(y,inf);
end

r = 1/r + u;