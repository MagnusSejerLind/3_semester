
y = linspace(-100,100,100);

V = 100;
c = 100;

tau = (4*V)./(3*pi.*c.^4).*(c.^2-y.^2);


plot(tau,y,LineWidth=2)

grid on
title('Shear stress distrubition')
xlabel('Shear stress [MPa]')
ylabel('y [m]')
hYLabel = get(gca,'YLabel');
set(hYLabel,'rotation',0,'VerticalAlignment','middle')

