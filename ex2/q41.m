m=[];
i=1;
for t = -20:0.01:20
y = 0;
for n = 1:1:20000
y = y + sin(n.*t)/n;
end
m(i) = y;
i=i+1;
end
t = -20:0.01:20;
plot (t,m);
xlim([-3.*pi 3.*pi])
ylim([-2 2])