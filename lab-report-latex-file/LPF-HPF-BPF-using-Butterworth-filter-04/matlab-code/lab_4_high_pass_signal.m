clc;
clear;
close all;

fs = 10000;  % Sampling frequency
t = (0:1:5000) / fs;
signala = sin(2*pi*100*t); 
signalb = sin(2*pi*20*t); 
signalc = signala + signalb;
Fs = fs; % Sampling Frequency (Hz)
Fn = Fs/2;% Nyquist Frequency (Hz)
Wp = 80/Fn;% Passband Frequency (Normalised)
Ws = 30/Fn;% Stopband Frequency (Normalised)
Rp =3; % Passband Ripple (dB)
Rs = 20; 
[n,Wn] = buttord(Wp,Ws,Rp,Rs);
[b, a]= butter(n,Wn, "high");
[p, q]=freqz(b, a, fs);
output = filter(b, a, signalc);
%% Signal plot
plt=Plot(t, signala, t, signalb, t, signalc);
leg=legend('$\sin(200\pi\cdot t$', '$\sin(40\pi\cdot t$',...
    '$\sin(200\pi\cdot t+\sin(40\pi\cdot t$');
set(leg , "Interpreter", "latex")
plt.XLabel ='Time(t)'
plt.YLabel ="Amplitude";
plt.Title ="Signal";
plt.XGrid =" on ";
plt.YGrid =" on ";
plt.XLim =[0 0.1 ];
plt.ShowBox ="off";
%setPlotProp(plt)
%% Frequency Specturm of signal
signal_fft = fft(signalc);
n = length(signalc);          % number of samples
y0 = fftshift(signal_fft);  % shift y values
f0 = (-n/2:n/2-1)*(fs/n);  % 0-centered frequency range
power0 = abs(y0).^2/n;     % 0-centered power
plt=Plot(f0, power0);
plt.Colors={[139/256 0 0]};
plt.XLabel ='Frequency'
plt.YLabel ="Power";
plt.Title ="Frequency Specturm of Signal";
plt.XGrid =" on ";
plt.YGrid =" on ";
plt.ShowBox ="off";
%% Magnitude plot of a high pass filter
plt=Plot(q, abs(p));
plt.Colors="red";
plt.LineWidth=2;
plt.XLabel ='Frequency'
plt.YLabel ="Magnitude Plot";
plt.Title ="High Pass Filter";
plt.XGrid =" on ";
plt.YGrid =" on ";
plt.ShowBox ="off";
%% Filtered output
plt=Plot(t, signala, t, output)
leg=legend('Original Signal',...
    'Filtered Signal');
set(leg , "Interpreter", "latex")
plt.XLabel ='Time(t)'
plt.YLabel ="Amplitude";
plt.Title ="Signal";
plt.XGrid ="on";
plt.YGrid ="on";
plt.ShowBox ="off";
plt.XLim =[0 0.1 ];
%setPlotProp(plt)