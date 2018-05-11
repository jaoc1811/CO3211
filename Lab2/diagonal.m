function f = diagonal(A,b)

n=size(A)(1)

for i=1:1:n
  if (A(i,i)==0)
    disp('error')\
  
    return
   end
   x(i)=b(i)/A(i,i);
end

x
