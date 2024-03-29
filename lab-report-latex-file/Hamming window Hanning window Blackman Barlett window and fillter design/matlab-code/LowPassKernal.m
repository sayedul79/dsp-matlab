clc;
clear;
close all;
wp=0.4*pi;
ws=0.6*pi;
wc=(wp+ws)/2;
TranBand=ws-wp;
M=8*pi/TranBand;
n=0:1:M;
h_d_lpf=(wc/pi)*sinc(wc*(n-M/2)/pi);
figure
stem(n, h_d_lpf, "filled", "linewidth", 2)
xlabel("Samples")
ylabel("Amplitude")
title("Low Pass Filter Kernal", "FontSize", 14)
figure
%freqz(h_d_lpf)
[h, w]=freqz(h_d_lpf);
plot(w/pi, 20*log(abs(h)), "color", "r", "linewidth", 2)
xlabel("Normalized frequency")
ylabel("Magnitude (db)")
title("Kernal of Low pass filter", "FontSize", 14)