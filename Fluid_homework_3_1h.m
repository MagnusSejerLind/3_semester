
B=1;
c=1;

[x,y] = meshgrid(linspace(0,1.5,15),linspace(0,1.5,15));

u_x = B.*y;
u_y = B.*x;

psi = ((B.*y.^2)/2)-((B.*x.^2)/2);

figure(1)
hold on
contour(x,y,psi,'LevelStep',0.1,'LineWidth',1);
quiver(x,y,u_x,u_y,'k','LineWidth',1);

xlim([0 1.5])
ylim([0 1.5])


title('Velocity field')
xlabel('x')
ylabel('y')

hYLabel = get(gca,'YLabel');
set(hYLabel,'rotation',0,'VerticalAlignment','middle')

hold off

%% Combined plot


[x,y] = meshgrid(linspace(0,1.5,200),linspace(0,1.5,200));
[X,Y] = meshgrid(linspace(0,1.5,15),linspace(0,1.5,15));

A=1; 
% Constant


u_x = -A.*X;
u_y = A.*Y;
% Velocity components

psi = -A.*x.*y;
% Streamfunction

figure(2)
hold on
[x,y] = contour(x,y,psi,'r','LevelStep',0.1,'LineWidth',1);


% quiver(X,Y,u_x,u_y,'k','LineWidth',1);
% Vector field of flow




B=1;
c=1;

[x,y] = meshgrid(linspace(0,1.5,15),linspace(0,1.5,15));

u_x = B.*y;
u_y = B.*x;

psi = ((B.*y.^2)/2)-((B.*x.^2)/2);


contour(x,y,psi,'b','LevelStep',0.1,'LineWidth',1);
% quiver(x,y,u_x,u_y,'k','LineWidth',1);

leg = legend('$\Psi=-{\it Axy}$','$\Psi=-{\frac {b{x}^{2}}{2}}+{\frac {b{y}^{2}}{2}}$');
set(leg, 'interpreter', 'latex')

title('Orthogonal Streamlines')
xlabel('x')
ylabel('y')

hYLabel = get(gca,'YLabel');
set(hYLabel,'rotation',0,'VerticalAlignment','middle')


xlim([1E-3 1.5])
ylim([1E-3 1.5])

