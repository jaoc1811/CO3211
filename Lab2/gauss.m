function [A,b] = gauss(A,b)

n=size(A)(1);

for k=1:1:n-1
  for i=k+1:1:n
    
    a = A(i,k)/A(k,k);
    
    for j=k:1:n
      A(i,j) = A(i,j) - (a * A(k,j));
    end
    
    b(i) = b(i) - (a * b(k));
    
  end
end