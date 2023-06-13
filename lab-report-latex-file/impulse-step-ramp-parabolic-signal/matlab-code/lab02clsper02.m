clc;
clear;
close all;
n=-3:13;
ramp=zeros(size(n));
ramp_5=zeros(size(n));
for i=1:length(n)
    ramp(i)=RampFunction(n(i));
    ramp_5(i)=RampFunction(n(i)-5);
end
figure
stem(n, ramp,"filled", "linewidth", 1.5, "color", [62/256 19/256 191/256])
plt=[];
plt.XLabel='Discrete time n'
plt.YLabel="r[n]";
plt.XGrid="on";
plt.YGrid="on";
plt.ShowBox="off";
setPlotProp(plt)

figure
stem(n, ramp_5,"filled", "linewidth", 1.5, "color", "k")
plt=[];
plt.XLabel='Discrete time n'
plt.YLabel="r[n-5]";
plt.XGrid="on";
plt.YGrid="on";
plt.ShowBox="off";
setPlotProp(plt)