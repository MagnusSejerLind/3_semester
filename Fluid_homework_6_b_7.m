 
close all
d = 100;
g = 9.81;
lambda = 18;
k = (2*pi)/lambda;
c = (sqrt(g*k*tanh(k*d)))/k;
a = 1.2;

t = linspace(0,lambda/c);
x_0 = linspace(-lambda,2*lambda,21);
z_0 = linspace(0,-d,21);

A_p = (a.*c.*exp(k.*d))./(exp(-k.*d)-exp(k.*d));
A_m = (a.*c.*exp(-k.*d))./(exp(-k.*d)-exp(k.*d));

X = @(x_0,z_0,t) -(A_p .* exp(k .* z_0) + A_m .* exp(-k .* z_0)) .* cos(c .* k .* t - k .* x_0) ./ c +x_0;
Z = @(x_0,z_0,t) ((A_p .* k .* exp(k .* z_0) - A_m .* k .* exp(-k .* z_0))...
    .* sin(c .* k .* t - k .* x_0)) ./ k ./ c + z_0;

hold on;
figure(1);
for i=1:length(x_0)
    for j=1:length(z_0)
plot(X(x_0(i),z_0(j),t),Z(x_0(i),z_0(j),t),'k',LineWidth=1)


    end
end


% Wave function
T = linspace(-50,60);
eta = a*sin(k.*(c-T));
plot(eta,'b',LineWidth=.75)

hold off


xlim([1 1.5*lambda])
ylim([-20 10])

title('Pathlines for water waves')
xlabel('Distance [m]')
ylabel('Depth [m]')

