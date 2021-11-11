%% 10-46

x=linspace(0,.5,1000);
phi_1 = 0.005428881650.*x + 0.005428881650.*x.^2;
hold on
plot(x,phi_1,'b',LineWidth=2)

x=linspace(.5,1,1000);
phi_2 = -0.4071572475e-2 + 0.2171552660e-1 .* x - 0.1085776330e-1 .* x .^ 2;
plot(x,phi_2,'r',LineWidth=2)

xlim([0 1])
leg = legend('$\Phi_{0\, m\rightarrow 0.5\, m}$','$\Phi_{0.5\,m\rightarrow 1\,m}$',Location='southeast');
set(leg, 'interpreter', 'latex')
titl = title('Angle of twist');
xlab = xlabel('x [m]');
ylab = ylabel('$\phi$ [rad] ');
set(ylab, 'interpreter', 'latex')
set(xlab, 'interpreter', 'latex')
set(titl, 'interpreter', 'latex')
grid on

hold off
