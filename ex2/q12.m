t=-5:0.001:5;
t0 = 0;
f1 = cos(30.*t) .*(stepfun(t+2.5,t0) - stepfun(t - 2.5,t0));
f2 = stepfun(t,t0) - stepfun(t-4,t0);
w = conv(f1,f2).*0.001;
t = -10:0.001:10;
plot(t,w)
xlim([-5 7])
ylim([-0.05 0.05])
