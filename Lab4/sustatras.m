function x = sustatras(A,b)
n=size(A)(1);

x=zeros(n,1);
x(n) = b(n)/A(n,n);

for i=n-1:-1:1
    if (A(i,i) == 0)
      disp('error')
    end
    suma=0;
    for j=i+1:1:n
      suma=suma + A(i,j) * x(j);
    end
    x(i)=(b(i)-suma) / A(i,i);
end