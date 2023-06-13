clc;
clear;
close all;
%% Read sppech wave file
[data, fs]=audioread('speech.wav');
t=(1:1:length(data))/fs;

plt=Plot(t, data);
plt.XLabel ='Time'
plt.YLabel ="Audio Signal";
plt.Title ="Speech signal with sampling rate 16000";
plt.XGrid =" on ";
plt.YGrid =" on ";
plt.ShowBox ="off";

%% Frequency Specturm of Speech.wav
voice_fft = fft(data);
n = length(data);          % number of samples
y0 = fftshift(voice_fft);  % shift y values
f0 = (-n/2:n/2-1)*(fs/n);  % 0-centered frequency range
power0 = abs(y0).^2/n;     % 0-centered power
plt=Plot(f0, power0);
plt.Colors={[139/256 0 0]};
plt.XLabel ='Frequency'
plt.YLabel ="Power";
plt.Title ="Frequency Specturm of Voice Signal";
plt.XGrid =" on ";
plt.YGrid =" on ";
plt.ShowBox ="off";

%% Add noise with speech.wav
DataWithNoise=data+0.1*randn(size(data));
plt=Plot(t, DataWithNoise);
plt.XLabel ='Time'
plt.YLabel ="Audio Signal With Noise";
plt.Title ="Speech & noise signal with sampling rate 16000";
plt.XGrid =" on ";
plt.YGrid =" on ";
plt.ShowBox ="off";
%% Frequency specturm of noisy speech.wav
y = fft(DataWithNoise);
n = length(DataWithNoise);          % number of samples
y0_WithNoise = fftshift(y);         % shift y values
f0_noise = (-n/2:n/2-1)*(fs/n); % 0-centered frequency range
PowerWithNoise = abs(y0_WithNoise).^2/n;    % 0-centered power
plt=Plot(f0_noise,PowerWithNoise)
plt.Colors={[139/256 0 0]};
plt.XLabel ='Frequency'
plt.YLabel ="Power";
plt.Title ="Frequency Specturm of Voice Signal With Noise";
plt.XGrid =" on ";
plt.YGrid =" on ";
plt.ShowBox ="off";
%% Butterworth filter design
Fs = fs;                       % Sampling Frequency (Hz)
Fn = Fs/2;                              % Nyquist Frequency (Hz)
Wp = 0.04;                           % Passband Frequency (Normalised)
Ws = .2;                           % Stopband Frequency (Normalised)
Rp =15;                               % Passband Ripple (dB)
Rs = 60;                               % Stopband Ripple (dB)

[n,Wn] = buttord(Wp,Ws,Rp,Rs);
[b, a]= butter(n,Wn, "low");
[p, q]=freqz(b, a, 16000);
plt=Plot(q, abs(p));
plt.Colors="red";
plt.LineWidth=2;
plt.XLabel ='Frequency'
plt.YLabel ="Magnitude Plot";
plt.Title ="Low Pass Filter";
plt.XGrid =" on ";
plt.YGrid =" on ";
plt.ShowBox ="off";

filtered_sound=filter(b, a, DataWithNoise);
fs2_d = [filtered_sound,filtered_sound];
sound(fs2_d, Fs)

plt=Plot(t, filtered_sound);
plt.XLabel ='Time'
plt.YLabel ="Audio Signal";
plt.Title ="Filtered Speech signal with sampling rate 16000";
plt.XGrid =" on ";
plt.YGrid =" on ";
plt.ShowBox ="off";

filtered_fft = fft(filtered_sound);
n = length(filtered_sound);          % number of samples
f = (0:n-1)*(fs/n);     % frequency range
PowerAfterFilter = abs(filtered_fft).^2/n;    % power of the DFT
y0_filtered = fftshift(filtered_fft);         % shift y values
f0_filtered = (-n/2:n/2-1)*(fs/n); % 0-centered frequency range
PowerAfterFilter0 = abs(y0_filtered).^2/n;    % 0-centered power
plt=Plot(f0_noise,PowerAfterFilter0)
plt.Colors={[8/256 156/256 50/256]};
plt.XLabel ='Frequency'
plt.YLabel ="Power";
plt.Title ="Frequency Specturm of Filtered Voice Signal";
plt.XGrid =" on ";
plt.YGrid =" on ";
plt.ShowBox ="off";

%% Cross correlation
[c, lags]=xcorr(data, filtered_sound);
plt=Plot(lags/fs, c);
plt.Colors={[62/256, 19/256, 191/256]};
plt.XLabel ='time(s)'
plt.YLabel ="Amplitude";
plt.Title ="Correlation between filtered signal & speech";
plt.XGrid =" on ";
plt.YGrid =" on ";
plt.ShowBox ="off";

