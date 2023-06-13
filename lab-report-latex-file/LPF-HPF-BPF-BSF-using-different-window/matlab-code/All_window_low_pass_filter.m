clc;
clear;
close all;
M=40; %filter order
wp=0.4*pi;
ws=0.6*pi;
wc=(wp+ws)/2;
n=0:1:M;
rectangle=1;
barlet=1-2*abs(n-M/2)/M;
hamming=0.54-0.46*cos(2*pi*n/M);
hanning=0.5-0.5*cos(2*pi*n/M);
blackman=0.42-0.5*cos(2*pi*n/M)+0.08*cos(4*pi*n/M);
h_d=(wc/pi)*sinc(wc*(n-M/2)/pi);
window.rect=rectangle;
window.trian=barlet;
window.hamm=hamming;
window.hann=hanning;
window.black=blackman;
fields = fieldnames(window)
L=length(fields);
title_tex=["Rectangular" "Barlet" "Hamming" "Hanning" "Blackman"];
E_lpf=zeros(1,L);
for i=1:L
    h_n=h_d.*getfield(window, fields{i});
    [h, w]=freqz(h_n);
    mag=abs(h);
    E_wp=sum(abs(1-mag(w<=wp)));
    E_ws=sum(abs(0-mag(w>=ws)));
    E_lpf(i)=E_wp+E_ws;
    figure
    plot(w/pi, 20*log(mag), "color", "r", "linewidth", 2)
    grid on;
    xlabel("Normalized frequency");
    ylabel("Magnitude (db)");
    title(["|H(e^{j\omega})|" " Using "+title_tex(i) + " window"], "FontSize", 14)
    figure
    plot(w/pi, angle(h), "color", "b", "linewidth", 2)
    xlabel("Normalized frequency");
    yticks([-pi -pi/2 0 pi/2 pi])
    yticklabels({'-\pi','-\pi/2','0','\pi/2','\pi'})
    ylabel("Angle");
    title(["\angle{H(e^{j\omega})}" " Using "+title_tex(i) + " window"], "FontSize", 14)
end
figure
scatter([1 10 20 30 40],E_lpf,60,"r","filled")
xticks([1 10 20 30 40])
xticklabels(title_tex)
title("Total Absolute Error for LPF", "FontSize", 14)