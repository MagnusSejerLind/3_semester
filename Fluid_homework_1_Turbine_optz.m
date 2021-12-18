
clc,clear

prec = 1e8;
% Precision

t = linspace(1,prec(end),100);

a = 1/3;
b = 1;
% axial induction factor limits

r1 = (b-a).*rand(prec,1) + a;
r2 = (b-a).*rand(prec,1) + a;
% Random axial induction factor values generated

q__3=1/3; % Optimal induction factor of final turbine

f=zeros(prec,1);
q__1=zeros(prec,1);
q__2=zeros(prec,1);
% prelocating length of vectors

for i=1:prec
% Determines the maximum power production
    q__1(i) = r1(i);
    q__2(i) = r2(i);
    
    f(i)=0.5411884220e7 * (1 + q__1(i)) * (-q__1(i) .^ 2 + 1) +...
0.5411884220e4 * (1 + q__2(i)) * (-q__2(i) .^ 2 + 1) * (0.9269539810e1...
+ 0.7304601899e0 * q__1(i)) .^ 3 + 0.5411884220e4 * (1 + q__3) * ...
(-q__3 .^ 2 + 1) * (0.10e2 * (0.9269539810e0 + 0.7304601899e-1 *...
q__1(i)) * (0.7304601899e-1 * q__2(i) + 0.9269539810e0) + 0.48631956e0...
- 0.4863195649e0 * q__1(i)) .^ 3;
    % Power production expression
end

[M,I] = max(f);
fprintf('Power produced = %.3f MW\nq_1 = %.3f  ,  q_2 = %.3f\n',max(f)*(1e-6),q__1(I),q__2(I));

afspil_gong_lyd
