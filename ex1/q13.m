t = linspace(-10, 10, 1000);
f = f3(t);
plot(t, f); ylim([-1, 3])
function x = f3(t)
    x = rectpuls(t, 2) + rectpuls(t, 4);
end