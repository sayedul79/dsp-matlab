clc;
clear;
close all;
wp=0.4*pi;
ws=0.6*pi;
wc=(wp+ws)/2;
TranBand=ws-wp;
M=8*pi/TranBand;
n=0:1:M;
w=0.54-0.46*cos(2*n*pi/M);
h_d_lpf=(wc/pi)*sinc(wc*(n-M/2)/pi);
h_n=w.*h_d_lpf;
figure
stem(n, h_n, "filled", "linewidth", 2)
xlabel("Samples")
ylabel("Amplitude")
title("Low Pass Filter Response", "FontSize", 14)
figure
%freqz(h_d_lpf)
[h, w]=freqz(h_n);
plot(w/pi, 20*log(abs(h)), "color", "r", "linewidth", 2)
grid on;
xlabel("Normalized frequency")
ylabel("Magnitude (db)")
title("Frequency Response of Low pass filter", "FontSize", 14)