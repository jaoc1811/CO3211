function [k,x,r] = potenciaDesplazada(A,x,itmax,tolerancia,u)

B = A - u*eye(3) ;

for k=1:itmax
      y = B*x;
      r = y(1) / x(1);
      
      if norm(x - y/norm(y,inf),inf) < tolerancia
            r = r + u;
            return
      end
      x = y / norm(y,inf);
end

r = r + u;
