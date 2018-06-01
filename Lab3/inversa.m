function B = inversa(A)
    n = size(A)(1);
    I = eye(n);
    
    for i=1:n
      x = LU(A,I(:,i));
      
      for j=1:n
        B(j,i)=x(j);
      end
    end
    