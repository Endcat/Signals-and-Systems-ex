k = [-5:7]
f = heaviside(k+2) - heaviside(k-5)
stem(k,f,'filled')
function y = heaviside(n)
    y = 0 * n;
    y(find(n >= 0)) = 1;
end