t = -1:0.01:1;
syms n
w1 = symsum(sin(n*t)/n,n,1,30);
w2 = symsum(sin(n*t)/n,n,1,60);
w3 = symsum(sin(n*t)/n,n,1,90);
% consider 9999 as infinite
S = symsum(sin(n*t) / n,n,1,9999); 
plot(t,S);
hold on
plot(t,w1,'r');
hold on
plot(t,w2,'g');
hold on
plot(t,w3,'b');