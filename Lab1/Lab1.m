fprintf('Ejercicio 1\n')
f=@(x) (1-cos(x))./x.^2
ezplot(f,[-3,3])
f(1.2.*10.^-8)

g=@(x) (1./2).*((sin(x./2))./(x./2)).^2
g(1.2.*10.^-8)


fprintf('Ejercicio 2\n')



fprintf('Ejercicio 3\n')

sum =(1/3).*(10000000000 + 10000000001 + 10000000002);
V1 = (1/2).*((10000000000 - sum)^2+(10000000001 - sum)^2 + (10000000002 - sum)^2)

sum1= ((10000000000)^2+(10000000001)^2+(10000000002)^2);
sum2= (10000000000+10000000001+10000000002)^2;
V2= (1/2)*(sum1 - (1/3)*sum2)