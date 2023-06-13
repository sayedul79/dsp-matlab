clc;
clear;
close all;
wp=0.4*pi;
ws=0.6*pi;
TranBand=ws-wp;
M=8*pi/TranBand;
n=0:1:M;
w=0.54-0.46*cos(2*n*pi/M);
stem(n, w, "filled", "linewidth", 2)
xlabel("Samples")
ylabel("Amplitude")
title("Hamming window", "FontSize", 16)