

[x,y] = meshgrid(linspace(-1,1,500),linspace(-1,1,500));

m=2;
a=0;

psi = m ./ pi ./ (2 .* x - 2 .* a) .* atan((2 .* y ./ (2 .* x - 2 .* a))) .* x - m ./ pi ./ (2 .* x - 2 .* a) .* ...
atan((2 .* y ./ (2 .* x - 2 .* a))) .* a + m ./ pi ./ (2 .* x + 2 .* a) .* atan((2 .* y ./ (2 .* x + 2 .* a))) .*...
x + m ./ pi ./ (2 .* x + 2 .* a) .* atan((2 .* y ./ (2 .* x + 2 .* a))) .* a - m ./ pi .* atan(((2 .* x - 2 .* a)...
./ y) ./ 0.2e1) ./ 0.2e1 + m ./ pi .* atan(((2 .* x + 2 .* a) ./ y) ./ 0.2e1) ./ 0.2e1;
% Streamfunction


figure(1)
contour(x,y,psi,'LevelStep',0.1,'LineWidth',1);


xlim([-1 1])
ylim([-1 1])

title('Streamlines')
xlabel('x')
ylabel('y')

hYLabel = get(gca,'YLabel');
set(hYLabel,'rotation',0,'VerticalAlignment','middle')



figure(2)

[x,y] = meshgrid(linspace(-1,1,500),linspace(-1,1,500));

m=2;
a=0.5;

psi = m ./ pi ./ (2 .* x - 2 .* a) .* atan((2 .* y ./ (2 .* x - 2 .* a))) .* x - m ./ pi ./ (2 .* x - 2 .* a) .* atan((2 .* y ./ (2 .* x - 2 .* a))) .* a + m ./ pi ./ (2 .* x + 2 .* a) .* atan((2 .* y ./ (2 .* x + 2 .* a))) .* x + m ./ pi ./ (2 .* x + 2 .* a) .* atan((2 .* y ./ (2 .* x + 2 .* a))) .* a - m ./ pi .* atan(((2 .* x - 2 .* a) ./ y) ./ 0.2e1) ./ 0.2e1 + m ./ pi .* atan(((2 .* x + 2 .* a) ./ y) ./ 0.2e1) ./ 0.2e1;


contour(x,y,psi,'LevelStep',0.1,'LineWidth',1);

title('Streamlines near wall')
xlabel('x')
ylabel('y')

hYLabel = get(gca,'YLabel');
set(hYLabel,'rotation',0,'VerticalAlignment','middle')
