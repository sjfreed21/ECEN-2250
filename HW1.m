%% Problem 6
R = [110, 500, 1000];
V = 200;
I = V./R

%% Problem 7
V = linspace(-2, 3, 10000);
C = @(v)(exp(v)-10);
P = @(v)((exp(v)-10).*v);
I = C (V);
plot (V, I)
P1 = -2*C(-2) % V = -2
P2 = 2*C(2) % V = 2
P3 = 3*C(3) % V = 3
[VP, VW] = fsolve (P, [-2, 3]);
VP