x = linspace(-1,10,1000);
plot(x,heaviside(x)); ylim([-2 2])

function y = heaviside(n)
    y = 0 * n;
    y(find(n >= 0)) = 1;
end
