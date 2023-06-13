clc;
clear;
close all;
SamplingFreq=1500;
SamplingTime=1/SamplingFreq;
SignalFreq=100;
SampleNum=SamplingFreq/SignalFreq;
t=0:(SampleNum-1)*SamplingTime:SampleNum;
n=0:SampleNum-1;
signal=sin(2*pi*SignalFreq*t)
figure
stem(n, signal)
ct=0
for index=n
    t=0:0.01:SampleNum;
    ct=ct+signal(index+1)*np.sinc((t-index*SamplingTime)/SamplingTime)
end