clc;
clear;
close all;
M=120;
n=0:1:M;
w=0.42-0.5*cos(2*n*pi/M)+0.08*cos(4*n*pi/M);
stem(n, w, "filled", "linewidth", 2)
xlabel("Samples")
ylabel("Amplitude")
title("Blackman window", "FontSize", 16)