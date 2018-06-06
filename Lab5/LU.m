function x = LU(A,b)

n=size(A)(1);
x = zeros(n,3)

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


% Vector x1
y1 = sustadel(L,b(1:n,1));

x(1:n,1) = sustatras(U,y1);

% Vector x1
y2 = sustadel(L,b(1:n,2));

x(1:n,2) = sustatras(U,y2);


% Vector x1
y3 = sustadel(L,b(1:n,3));

x(1:n,3) = sustatras(U,y3);