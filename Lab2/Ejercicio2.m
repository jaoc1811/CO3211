disp('Ejercicio a, b')
hilbert(2)

hilbert(3)

hilbert(5)

hilbert(10)

disp('Ejercicio c')

disp('COndicionante de una matriz de hilbert de 13x13')
cond(hilb(13),inf)
disp('Podemos apreciar que para una matriz de hilbert de dimension 13x13 el condicionante llega al orden de 10^17 por lo que se pueden perder hasta 17 digitos de precision, y una maquina de 64 bits tiene 16 digitios de precision, asi la solucion no tendra cifras significativas')

%Ejercicio d

intervalo = 1:13;
funcion = 1:13;
for i=1:13
  funcion(i) = cond(hilb(i));
end
plot(intervalo,funcion,'-b')

disp('Ejercicio e')

disp('Mediante la grafica podemos apreciar que la matriz de hilbert es una matriz en la cual el numero de condicion aumenta exponencialmente con el tamaño de esta, lo cual nos dice que es un matriz que puede generar bastantes errores al trabajar con ella')
disp('Se puede observar en el ejercicio a, que mientras aumenta el tamaño de la matriz se van perdiendo digitos de precision en los resultados')