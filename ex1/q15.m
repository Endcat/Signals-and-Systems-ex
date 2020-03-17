k = -5:1:5;
tmp = 7 * (0.6.^k).*cos(0.9*pi*k);
stem(k,tmp,'filled')