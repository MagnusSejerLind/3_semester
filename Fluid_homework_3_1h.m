
B=1;
c=1;

[x,y] = meshgrid(linspace(0,1.5,15),linspace(0,1.5,15));

u_x = B.*y;
u_y = B.*x;

psi = ((B.*y.^2)/2)-((B.*x.^2)/2);


hold on
contour(x,y,psi,'LevelStep',0.1,'LineWidth',1);
quiver(x,y,u_x,u_y,'k','LineWidth',1);

xlim([0 1.5])
ylim([0 1.5])


hold off


