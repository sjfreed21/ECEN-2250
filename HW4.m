syms v1 i1

Vth = 3;
Rth = 10;

Eqs = [((Vth-v1)/Rth) - i1 == 0, (exp(10*v1)-1)/(10^12)-i1 == 0]

A = solve(Eqs,[i1 v1]);

vd = (double(A.v1))
id = (double(A.i1))

vv = 0:0.001:3;
ii1 = @(vv) ((vv)./(-Rth)) + Vth/Rth;
ii2 = @(vv) ((exp(vv.*10)-1)./(10^12));
figure
plot(vv,ii1(vv))
hold on
axis([0 3 0 0.3])
plot(vv, ii2(vv))
x1 = fzero(@(vv) (ii1(vv)-ii2(vv)), 0.05);
plot(x1, 0.05, 'ro','MarkerSize', 18)
title('Diode Load Line Method');
xlabel('Voltage (V)');
ylabel('Current (A)');
legend({'Source','Load','OP'}, 'Location','northwest')
hold off