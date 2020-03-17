t = linspace(-10, 10, 1000);
f = diff(f3(4-2*t));
plot(t(2:end),f); ylim([-1,3])
function x = f3(t)
    x = rectpuls(t, 2) + rectpuls(t, 4);
end