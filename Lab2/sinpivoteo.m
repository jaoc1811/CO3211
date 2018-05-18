function x = sinpivoteo(A,b)

n=size(A)(1);

for k=2:n
    for i=k:n
        alpha= A(i,k-1)/A(k-1,k-1);
        for j=k:n
            A(i,j) = A(i,j)-(alpha*A(k-1,j));
        end
        b(i)=b(i)-(alpha*b(k-1));
    end
end

x = triangularsup(A,b);