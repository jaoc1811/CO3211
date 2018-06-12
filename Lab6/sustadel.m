function x = sustadel(A,b)

n=size(A)(1);
x=zeros(n,1);
x(1) = b(1)/A(1,1);

for j=2:1:n
  
  suma = 0;
  
  if A(j,j) == 0
    disp('error')
  end
  
  for i=1:1:j-1
    suma = suma + A(j,i)*x(i);
  end
  
  x(j) = (b(j) - suma) / A(j,j);
end