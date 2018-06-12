function [k,x,r] = potenciaInversa(A,x,itmax,tolerancia)

[L,U] = LU(A);

for k=1:itmax

      aux = sustadel(L,x);
      y = sustatras(U,aux);
      
      r = y(1)/x(1);
     
      if norm(x - y/norm(y,inf),inf) < tolerancia
            r = 1/r;
            return 
      end
      
      x = y / norm(y,inf);
end

r = 1/r;