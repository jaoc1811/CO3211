function [L,U,x] = LU(A,b)

n=size(A)(1);

for k=2:n
    for i=k:n
        alpha= A(i,k-1)/A(k-1,k-1);
        A(i,k-1)=alpha;
        for j=k:n
            A(i,j) = A(i,j)-(alpha*A(k-1,j));
        end
       % b(i)=b(i)-(alpha*b(k-1));
    end
end

U = triu(A);
L=tril(A,-1)+eye(n);

y = sustadel(L,b);

x = sustatras(U,y);