%% Problem 1
A = [1/2, -1/4; -1/4, 5/16];
B = [6;0];

v = A\B;
v2 = v(1)
v3 = v(2)

%% Problem 2
syms iS R1 R2 R3 R4
A = [(1/R1) + (1/R2), -(1/R2); (1/R2), -(1/R2) + (1/R3) + (1/R4)];
B = [iS; 0];

v = A\B;
vA = v(1)
vB = v(2)

%% Problem 3
syms e1 e2 R1 R2 R3
A = [-1, 1; R3/R1, (R3/R2) + 1];
B = [e1; e2];

v = A\B;
v1 = v(1)
v2 = v(2)