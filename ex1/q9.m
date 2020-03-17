plot(squareWave(200))
function f = squareWave(n)
    t = linspace(0, 4*pi, 1001);
    k = 1:n;
    for i = 1 : 1001
        j = t(i);
        d1 = sin((2*k-1)*j);
        d2 = 2*k-1;
        result = d1 ./ d2;
        f(i) = sum(result);
    end      
end