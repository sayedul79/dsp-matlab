clc;
clear;
close all;
M=40
n=0:1:M;
w1=2*n(1:M/2)/M;
w2=2-(2*n(M/2+1:end)/M);
stem(n(1:M/2), w1, "filled", "linewidth", 2)
hold on
stem(n(M/2+1:end), w2, "filled", "linewidth", 2)
xlabel("Samples")
ylabel("Amplitude")
title("Barlett window", "FontSize", 16)