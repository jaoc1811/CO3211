% Ejercicio 2.a)

function r = cosenoTaylor2(x,n)
%Funcion Coseno Polinomio de Taylor que calcula los valores de forma recursiva
  r = (-1).^n;
  k = n;
  
  while k != 0
    r = ((r).*(x.^2))/((2*k).*(2*k-1)) + (-1).^(k-1);
    k=k-1;
   end
   
endfunction