clc;
clear;
close all;
M=40; %filter order
w_cl=pi/4;
w_cu=3*pi/4;
n=0:1:M;
rectangle=1;
barlet=1-2*abs(n-M/2)/M;
hamming=0.54-0.46*cos(2*pi*n/M);
hanning=0.5-0.5*cos(2*pi*n/M);
blackman=0.42-0.5*cos(2*pi*n/M)+0.08*cos(4*pi*n/M);
h_d=(w_cu/pi)*sinc(w_cu*(n-M/2)/pi)-(w_cl/pi)*sinc(w_cl*(n-M/2)/pi);
window.rect=rectangle;
window.trian=barlet;
window.hamm=hamming;
window.hann=hanning;
window.black=blackman;
fields = fieldnames(window)
for i=1:length(fields)
    h_n=h_d.*getfield(window, fields{i});
    [h, w]=freqz(h_n);
    figure
    plot(w/pi, 20*log(abs(h)), "color", "r", "linewidth", 2)
    grid on;
    xlabel("Normalized frequency");
    ylabel("Magnitude (db)");
    title_tex=["Rectangular" "Barlet" "Hamming" "Hanning" "Blackman"];
    title(["|H(e^{j\omega})|" " Using "+title_tex(i) + " window"], "FontSize", 14)
    figure
    plot(w/pi, angle(h), "color", "b", "linewidth", 2)
    xlabel("Normalized frequency");
    yticks([-pi -pi/2 0 pi/2 pi])
    yticklabels({'-\pi','-\pi/2','0','\pi/2','\pi'})
    ylabel("Angle");
    title_tex=["Rectangular" "Barlet" "Hamming" "Hanning" "Blackman"];
    title(["\angle{H(e^{j\omega})}" " Using "+title_tex(i) + " window"], "FontSize", 14)
end