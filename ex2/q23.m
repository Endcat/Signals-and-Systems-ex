t = 0:0.1:10;
f = 4 * sin(2*pi*t);
sys = tf([2,1],[1,4,3]);
x = lsim(sys, f, t);
plot(t, x);