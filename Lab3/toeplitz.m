function T =  toeplitz(v)
  n = size(v)(2);
  m = floor(n/2) + 1;
  T = NaN(m,m);
  
for i=1:m
  T(1,i)=v(m - 1 + i);
  T(i,1)=v(m + 1- i);
end

for i=2:m
    for j=2:m
        T(i,j) = T(i-1,j-1);
    end
end