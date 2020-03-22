t = -3:0.001:10;
t0 = 0;
t2 = -6:0.001:20
f1 = stepfun(t, t0) - stepfun(t-1, t0);
f2 = 2 .* t .* (stepfun(t, t0) - stepfun(t-1, t0));
w = conv(f1, f2).*0.001;
plot(t2, w);
xlim([-1 3]) 
ylim([-1 3]) 