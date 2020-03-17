t = 0:0.00001:10
u = 4 .* exp(-0.5*t) .* cos(pi*t);
plot(t,u)