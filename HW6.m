%% Problem 1.b.i

n = 0:0.1:8;
t = -10:0.1:10;

nd = @(n,t) (dirac(t-n).*e^(-t));
v6 = @(nd) (sum(nd));

figure(1);
hold on
axis([-10 10 -10 10]);
title('v_6(t) versus t');
xlabel('time (units)');
ylabel('voltage (Volts)');
% plot(t,v6)

%% Problem 1.b.ii

t = 0:0.1:12;
v1 = heaviside(t-4)-(2.*heaviside(t-6))+heaviside(t-9)+(t.*heaviside(t-10));
v7 = diff(v1);

figure(2);
hold on
axis([0 12 -2 12])
title('v_1(t) and v_7(t) versus t');
xlabel('time (units)');
ylabel('voltage (Volts)');
plot(t,v1);
% plot(t,v7);
% legend('v_1(t)','v_7(t)')

%% Problem 1.b.iii

t = -0.5:0.01:0.5;
v8 = 20+(10.*cos(120.*pi.*t))-(10.*sin(120.*pi.*t))+(4.*sin(500.*pi.*t));

figure(3);
hold on
title('v_8(t) versus t');
xlabel('time (units)');
ylabel('voltage (Volts)');
plot(t,v8);

