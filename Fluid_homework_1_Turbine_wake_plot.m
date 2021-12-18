
clc,clear

for x=1:4000
f(x)=0.6414085002e7 + 0.6414085002e4 * (0.10e2 - 0.20e2 / 0.3e1 / (0.1e1 + 0.4000000000e-2 * x) ^ 2) ^ 3 + 0.6414085002e4 * (0.10e2 * (0.1e1 - 0.2e1 / 0.3e1 / (0.1e1 + 0.4000000000e-2 * x) ^ 2) ^ 2 - 0.10e2 + 0.10e2 / (0.3e0 * x + 0.75e2) ^ 2 * (0.6e0 * x + 0.75e2) ^ 2 + 0.10e2 * (0.1e1 - 0.2e1 / 0.3e1 / (0.1e1 + 0.8000000000e-2 * x) ^ 2) * (0.1e1 - 0.1e1 / (0.3e0 * x + 0.75e2) ^ 2 * (0.6e0 * x + 0.75e2) ^ 2)) ^ 3;

end
m = repmat(1.923e7,1,length(f));


plot(f,'LineWidth',2)
hold on
plot(m,'LineWidth',2)

legend('Three turbines arranged linearly','Three turbines with no wake inflow'...)
,'location','southeast')
grid on
title('Three-turbine systems')
xlabel('Distance between turbines [m]')
ylabel('Power produced [MW]')

hold off

