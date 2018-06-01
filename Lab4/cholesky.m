function [L,x] = cholesky(A,b)
n = size(A);
for j = 1:n
    suma = 0;
    for s = 1:j-1;
        suma = suma + (L(j,s))^2;
    end
    L(j,j) = (A(j,j) - suma)^(1/2);
    for i = j+1:n;
        suma = 0;
        for k = 1:j-1;
            suma = suma + L(i,k)*L(j,k);
        end
        L(i,j) = (A(i,j) - suma)/L(j,j);
    end
end

y = sustadel(L,b);
x = sustatras(L',y);