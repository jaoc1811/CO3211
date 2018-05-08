function r = cosenoTaylor1(x,n)
%Funcion Coseno Polinomio de Taylor
  r=0;
  
  for i=0:1:n
    r=r+((-1).^i).*(((x).^(2.*i))/(factorial(2.*i)));
  end
  
endfunction