
[x,y] = meshgrid(linspace(0,1.5,200),linspace(0,1.5,200));
[X,Y] = meshgrid(linspace(0,1.5,15),linspace(0,1.5,15));

A=1; 
% Constant

y_stag = 1E-3;
x_stag = 1E-3;
% Stagnation at (0,0)

u_x = -A.*X;
u_y = A.*Y;
% Velocity components

psi = -A.*x.*y;
% Streamfunction

figure(1)
[x,y] = contour(x,y,psi,'LevelStep',0.1,'LineWidth',1);
clabel(x,y)

hold on
plot(x_stag,y_stag,'ro','LineWidth',2)

plot(1,1,'ro','LineWidth',2)

xlim([1E-3 1.3])
ylim([1E-3 1.5])

[x,y] = meshgrid(linspace(0,1.5,200),linspace(0,1.5,200));
contour(x,y,psi,'r','LevelStep',1,'LineWidth',2);
% Streamline at psi = 1

quiver(X,Y,u_x,u_y,'k','LineWidth',1);
% Vector field of flow

title('Flow Field')

xlabel('x')
ylabel('y')

hYLabel = get(gca,'YLabel');
 set(hYLabel,'rotation',0,'VerticalAlignment','middle')
