function [L,U] = LU(A)

n=size(A)(1);

for k=2:n
    for i=k:n
        alpha= A(i,k-1)/A(k-1,k-1);
        A(i,k-1)=alpha;
        for j=k:n
            A(i,j) = A(i,j)-(alpha*A(k-1,j));
        end
    end
end

U = triu(A);
L=tril(A,-1)+eye(n);