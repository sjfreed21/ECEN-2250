t = 0:0.000001:0.01;
p = @(t) -0.004*exp(-4000.*t);

% I = 200 * exp(-2000.*t)
% L = 0.000005
% V = L .* diff(I)

plot(t, p(t))
xlabel("Time (seconds)");
ylabel("Power (Watts)");
title("Power in the Inductor vs Time");