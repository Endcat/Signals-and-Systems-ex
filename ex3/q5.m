syms t s
H(s)=s/(s^2+3*s+2);
h(t)=ilaplace(H(s));
g(t)=ilaplace(H(s)/s);
f(t)=cos(20*t)*stepfun(t,0);
F=laplace(f(t));
Yzs=H(s)*F;
yzs=ilaplace(Yzs);