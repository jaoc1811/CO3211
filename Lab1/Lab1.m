fprintf('Ejercicio 1\n')
% Ejercicio 1

% Funcion F(x)
f=@(x) (1-cos(x))./x.^2
% 1.a)
ezplot(f,[-3,3]);

% 1.b)
fprintf('\n1.b)\n')
f(1.2.*10.^-8)

% El resultado no es confiable, pues se aprecia en la grafica que la funcion mientras se acerca en x a 0, la funcion se acerca a 0.5 en y
% el resultado da 0.77

% Esto se debe a que la funcion realiza operaciones que tienden a provocar errores en los resultados, como la resta de 1-cos(x),
% ya que cuando que x tiende a cero el coseno se acerca a 1. Y por restas de numeros muy cercanos causa errores. Ademas al tener
% de denominador un numero tan pequeño elevado al cuadrado causa errores de redondeo.

% 1.c)
fprintf('\n1.c)\n')
g=@(x) (1./2).*((sin(x./2))./(x./2)).^2
g(1.2.*10.^-8)

% En este caso el resultado es mas confiable, y esto de sebe a que se evitan los errores ya que no se divide por numeros tan
% pequeños y no se restan numeros muy parecidos


fprintf('Ejercicio 2\n')
% Ejercicio 2


% 2.a) -->cosenoTaylor2.m

% 2.b)
intervalo = 8*pi:0.01:14*pi;
funcion1 = cosenoTaylor1(intervalo,51);
funcion2 = cosenoTaylor2(intervalo,51);
figure;
plot(intervalo,funcion1,'-b');
hold on;
plot(intervalo,funcion2,'-r');
title('Ejercicio 2.b)')
xlim([8*pi 14*pi])
ylim([-1 1])
xlabel('Eje X')
ylabel('Eje y')
legend('coseno por Polinomio de Taylor', 'coseno por Polinomio recursivo')

% 2.c)

fprintf('\n2.c)\n')

fprintf('\nAproximaciones \n')
cos2pi1 = cosenoTaylor1(2*pi,51)
cos2pi2 = cosenoTaylor2(2*pi,51)
cos8pi1 = cosenoTaylor1(8*pi,51)
cos8pi2 = cosenoTaylor2(8*pi,51)
cos16pi1 = cosenoTaylor1(16*pi,51)
cos161pi2 = cosenoTaylor2(16*pi,51)

fprintf('\nErrores Relativos \n')
errorRelativocos2pi1 = abs((cos(2*pi) - cosenoTaylor1(2*pi,51))/cos(2*pi))
errorRelativocos2pi2 = abs((cos(2*pi) - cosenoTaylor2(2*pi,51))/cos(2*pi))
errorRelativocos8pi1 = abs((cos(8*pi) - cosenoTaylor1(8*pi,51))/cos(8*pi))
errorRelativocos8pi2 = abs((cos(8*pi) - cosenoTaylor2(8*pi,51))/cos(8*pi))
errorRelativocos16pi1 = abs((cos(16*pi) - cosenoTaylor1(16*pi,51))/cos(16*pi))
errorRelativocos16pi2 = abs((cos(16*pi) - cosenoTaylor2(16*pi,51))/cos(16*pi))

% 2.d)

% En ambos casos para 2pi y 8pi se obtienen resultados acertados pero se aprecia que la funcion recursiva tiene menor error relativo
% por lo tanto el recursivo es mas preciso. Ambas funciones para 16pi dan resultados con poco sentido y un error relativo alto,
% ademas en la grafica se aprecia que a partir de un punto la grafica se va a menos infinito. Esto se debe al n que se pasa como parametro,
% como el ultimo elemento del polinomio tiene un exponente muy alto en comparacion con los demas, los demas elementos dejan de ser significantes
% y la computadora solo toma el valor mas grande, el cual es negativo por ser exponente impar. Si se usara como n=50 la grafica se iria hasta infinito positivo
% por la misma razon.


% 2.e)

fprintf('\n2.e)\n')

fprintf('\nAproximaciones \n')

cos2pi1 = cosenoTaylor1(2*pi - (floor((2*pi)/(2*pi))*2*pi),51)
cos2pi2 = cosenoTaylor2(2*pi - (floor((2*pi)/(2*pi))*2*pi),51)
cos8pi1 = cosenoTaylor1(8*pi - (floor((8*pi)/(2*pi))*2*pi),51)
cos8pi2 = cosenoTaylor2(8*pi - (floor((8*pi)/(2*pi))*2*pi),51)
cos16pi1 = cosenoTaylor1(16*pi - (floor((16*pi)/(2*pi))*2*pi),51)
cos161pi2 = cosenoTaylor2(16*pi - (floor((16*pi)/(2*pi))*2*pi),51)

fprintf('\nErrores Relativos \n')
errorRelativocos2pi1 = abs((cos(2*pi - (floor((2*pi)/(2*pi))*2*pi)) - cosenoTaylor1(2*pi - (floor((2*pi)/(2*pi))*2*pi),51))/cos(2*pi - (floor((2*pi)/(2*pi))*2*pi)))
errorRelativocos2pi2 = abs((cos(2*pi - (floor((2*pi)/(2*pi))*2*pi)) - cosenoTaylor2(2*pi - (floor((2*pi)/(2*pi))*2*pi),51))/cos(2*pi - (floor((2*pi)/(2*pi))*2*pi)))
errorRelativocos2pi1 = abs((cos(8*pi - (floor((8*pi)/(2*pi))*2*pi)) - cosenoTaylor1(8*pi - (floor((8*pi)/(2*pi))*2*pi),51))/cos(8*pi - (floor((8*pi)/(2*pi))*2*pi)))
errorRelativocos2pi2 = abs((cos(8*pi - (floor((8*pi)/(2*pi))*2*pi)) - cosenoTaylor2(8*pi - (floor((8*pi)/(2*pi))*2*pi),51))/cos(8*pi - (floor((8*pi)/(2*pi))*2*pi)))
errorRelativocos2pi1 = abs((cos(16*pi - (floor((16*pi)/(2*pi))*2*pi)) - cosenoTaylor1(16*pi - (floor((16*pi)/(2*pi))*2*pi),51))/cos(16*pi - (floor((16*pi)/(2*pi))*2*pi)))
errorRelativocos2pi2 = abs((cos(16*pi - (floor((16*pi)/(2*pi))*2*pi)) - cosenoTaylor2(16*pi - (floor((16*pi)/(2*pi))*2*pi),51))/cos(16*pi - (floor((16*pi)/(2*pi))*2*pi)))

% Los resultados mejoraron ya que en todos los casos la parte entera de x/2pi multiplicada por 2pi da como resultado el mismo x, asi x-x da como resultado 0.
% Entonces en todos los casos se esta calculando el cos(0), que mediante amabas funciones es exactamente 1, y por ello todos los resultados son iguales. Ademas,
% el error relativo es 0 ya que las funciones evaluadas en 0 dan como resultado lo mismo que cos(0), asi la diferencia de ellos da 0
% dando como resultado un error relativo igual a 0

fprintf('\nEjercicio 3\n')

% Ejercicio 3
sum =(1/3).*(10000000000 + 10000000001 + 10000000002);
VarianzaFormula1 = (1/2).*((10000000000 - sum)^2+(10000000001 - sum)^2 + (10000000002 - sum)^2)

sum1= ((10000000000)^2+(10000000001)^2+(10000000002)^2);
sum2= (10000000000+10000000001+10000000002)^2;
VarianzaFormula2= (1/2)*(sum1 - (1/3)*sum2)


% Los resultados no son iguales, esto se debe a que el segundo metodo eleva al cuadrado numeros muy grandes y luego calcula la
% diferencia de un numero muchisimo mayor con otro, lo cual trae errores de aritmetica en el computador.

% La varianza de estos numeros es 1
