clc;
clear;
close all;
wp=0.5*pi;
ws=0.33*pi;
wc=(wp+ws)/2;
TranBand=wp-ws;
M=ceil(8*pi/TranBand);
n=0:1:M;
w=0.5-0.5*cos(2*n*pi/M);
h_d_hpf=sinc(n-M/2)-(wc/pi)*sinc(wc*(n-M/2)/pi);
h_n=w.*h_d_hpf;
figure
stem(n, h_n, "filled", "linewidth", 2)
xlabel("Samples")
ylabel("Amplitude")
title("High Pass Filter Response", "FontSize", 14)
figure
%freqz(h_d_lpf)
[h, w]=freqz(h_n);
plot(w/pi, 20*log(abs(h)), "color", "r", "linewidth", 2)
grid on;
xlabel("Normalized frequency")
ylabel("Magnitude (db)")
title("Frequency Response of High pass filter", "FontSize", 14)