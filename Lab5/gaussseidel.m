function xnuevo = gaussseidel(A,b,xviejo,maxIteraciones,tolerancia)
    n = size(A,1);
    xnuevo = NaN*ones(n,1);
    for k=1:maxIteraciones
    
        for i=1:n
            suma1=0;
            for j=1:i-1
                suma1=suma1 + A(i,j) * xnuevo(j);
            end
            suma2=0 ;
            
            for j=i+1:n
                suma2= suma2+ A(i,j) * xviejo(j);
            end
            
            xnuevo(i) = (b(i) - suma1 - suma2) / A(i,i);
        end
        
        if norm(xnuevo - xviejo,inf) < tolerancia
              return
              
        end
        
        xviejo = xnuevo;
    end
    
    disp('La solucion no converge en ese numero de iteraciones')