

[x,y] = meshgrid(linspace(-1,1,500),linspace(-1,1,500));

m=2;
a=0;

psi = m ./ pi ./ (2 .* x - 2 .* a) .* atan((2 .* y ./ (2 .* x - 2 .* a))) .* x - m ./ pi ./ (2 .* x - 2 .* a) .* atan((2 .* y ./ (2 .* x - 2 .* a))) .* a + m ./ pi ./ (2 .* x + 2 .* a) .* atan((2 .* y ./ (2 .* x + 2 .* a))) .* x + m ./ pi ./ (2 .* x + 2 .* a) .* atan((2 .* y ./ (2 .* x + 2 .* a))) .* a - m ./ pi .* atan(((2 .* x - 2 .* a) ./ y) ./ 0.2e1) ./ 0.2e1 + m ./ pi .* atan(((2 .* x + 2 .* a) ./ y) ./ 0.2e1) ./ 0.2e1;



contour(x,y,psi,'LevelStep',0.1,'LineWidth',1);


xlim([-1 1])
ylim([-1 1])



