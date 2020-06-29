clear all
[y,fs]=audioread('recording.wav');
ts=1/fs;
t=[(1/fs):(1/fs):((length(y))/fs)];
figure(1);
subplot(2,1,1);
plot(t,y);title('Origin Signal Wave');xlabel('Time t');grid on;
subplot(2,1,2);
num=length(y);
plot((-num/2:num/2-1)/num*fs,abs(fftshift(fft(y))));
title('Origin Signal Freq');xlabel('frequence Hz');grid on;
fs1=fs/2
y1=resample(y,1,2);
audiowrite('1.wav',y1,fs1)
b=length(y1)
t1=[(1/fs1):(1/fs1):((length(y1))/fs1)];
figure(2);
subplot(2,1,1);
plot(t1,y1);
subplot(2,1,2)
num1=length(y1);
plot((-num1/2:num1/2-1)/num1*fs1,abs(fftshift(fft(y1))));
title('22khz Freq');xlabel('frequence Hz');grid on;
fs2=fs/4
y2=resample(y,1,4);
audiowrite('2.wav',y2,fs2);
t2=[(1/fs2):(1/fs2):((length(y2))/fs2)];
figure(3);
subplot(2,1,1);
plot(t2,y2);
num2=length(y2);
subplot(2,1,2);
plot((-num2/2:num2/2-1)/num2*fs2,abs(fftshift(fft(y2))));
title('11Khz Freq');xlabel('frequence Hz');grid on;
fs3=fs/8
y3=resample(y,1,8);
audiowrite('3.wav',y3,fs3);
t3=[(1/fs3):(1/fs3):((length(y3))/fs3)];
figure(4);
subplot(2,1,1);
plot(t3,y3);
num3=length(y3);
subplot(2,1,2);
plot((-num3/2:num3/2-1)/num3*fs3,abs(fftshift(fft(y3))));
title('5.5Khz Freq');xlabel('frequence Hz');grid on;
fs4=fs/16
y4=resample(y,1,16);
audiowrite('4.wav',y4,fs4);
t4=[(1/fs4):(1/fs4):((length(y4))/fs4)];
figure(5);
subplot(2,1,1);
plot(t4,y4);
num4=length(y4);
subplot(2,1,2);
plot((-num4/2:num4/2-1)/num4*fs4,abs(fftshift(fft(y4))));
title('2.75 Freq');xlabel('frequence Hz');grid on;