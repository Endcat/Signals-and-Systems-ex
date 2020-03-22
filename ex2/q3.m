% create white gaussian noise (sample)
y=2*wgn(1,500,0);
% get autocorrelation function
n=length(y);
[ACF,lags,bounds] = autocorr(y,n-1) ;
subplot(3,1,2) ;
plot(lags,ACF) ;
title('Autocorrelation Function');