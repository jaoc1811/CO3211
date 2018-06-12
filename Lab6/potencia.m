function [k,x,r] = potencia(A,x,itmax,tolerancia)

for k=1:itmax
      y = A*x;
      r = y(1) / x(1);
      
      if norm(x - y/norm(y,inf),inf) < tolerancia
            return
      end
      x = y / norm(y,inf);
end