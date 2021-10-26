P=1;
A=1;
theta = linspace(0,90,90);

% Avg. normal stress
sigma = (P*sind(theta).^2)/A;

% Avg. shear stress
tau = (P/2*A)*sind(2.*theta);

figure(1)
subplot(2,1,1)      
plot(sigma,'LineWidth',2)
xlabel('Θ')
title('Average normal stress')
yticks([ ])
xlim([0 90])
ylim([0 1.1])

subplot(2,1,2)      
plot(tau,'LineWidth',2)
xlabel('Θ')
title('Average shear stress')
yticks([ ])
xlim([0 90])
ylim([0 0.55])
