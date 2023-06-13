clc;
clear;
close all;
wp=0.5*pi;
ws=0.33*pi;
TranBand=wp-ws;
M=ceil(8*pi/TranBand);
n=0:1:M;
w=0.5-0.5*cos(2*n*pi/M);
stem(n, w, "filled", "linewidth", 2)
xlabel("Samples")
ylabel("Amplitude")
title("Hanning window", "FontSize", 16)