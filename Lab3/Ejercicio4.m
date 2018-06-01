disp('Inversas de las matrices anteriors')

disp('Ejercicio 2 ,caso a) n=5')
v1 = NaN(1,5);

for i=1:5
    v1(i)=1/i;
end

T1 = toeplitz(v1)

InversaT1 = inversa(T1)

disp('Norma de T1*T1^-1 - I')

norm(T1*InversaT1 - eye(size(T1)))

disp('Ejercicio 2 ,caso a) n=25')

v2 = NaN(1,25);

for i=1:25
    v2(i)=1/i;
end


T2 = toeplitz(v2)

InversaT2 = inversa(T2)

disp('Norma  de T2*T2^-1 - I')

norm(T2*InversaT2 - eye(size(T2)))

disp('Ejercicio 2 ,caso b)')

v3 = [-3,-2,-1,0.01,1,2,3];

T3 = toeplitz(v3)

InversaT3 = inversa(T3)

disp('Norma  de T3*T3^-1 - I')

norm(T3*InversaT3 - eye(size(T3)))

disp('Ejercicio 3, caso a)')

T4 = vander([0.5 0.6 0.7 0.8 0.9])

InversaT4 = inversa(T4)

disp('Norma  de T4*T4^-1 - I')

norm(T4*InversaT4 - eye(size(T4)))

disp('Ejercicio 3, caso b)')

T5 = vander([0.5 0.6 7 8 9 10 13])

InversaT5 = inversa(T5)

disp('Norma  de T5*T5^-1 - I')

norm(T5*InversaT5 - eye(size(T5)))