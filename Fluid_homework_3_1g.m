

[x,y] = meshgrid(linspace(0,10,150),linspace(0,10,150));


P_stag=3;
A=1;
rho=1;

P = P_stag-1/2*rho*A^2.*(x.^2+y.^2);

figure(1)
[x,y] = contourf(x,y,P);
clabel(x,y)








