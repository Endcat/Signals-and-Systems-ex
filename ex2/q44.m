t = -3:0.01:3;
syms n
syms y
w1 = symsum(symsum(sin(n*t)/n,n,1,y),y,1,50)/50;
w2 = symsum(symsum(sin(n*t)/n,n,1,y),y,1,100)/100;
w3 = symsum(symsum(sin(n*t)/n,n,1,y),y,1,200)/200;
% consider 9999 as infinite
S = symsum(sin(n*t) / n,n,1,9999); 
plot(t,w1,'m');
hold on
plot(t,w2,'b');
hold on
plot(t,w3,'g');
hold on