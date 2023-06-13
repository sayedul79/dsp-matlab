clc;
clear;
close all;
n=-3:13;
parab=zeros(size(n));
parab_5=zeros(size(n));
for i=1:length(n)
    parab(i)=parabolic(n(i));
    parab_5(i)=parabolic(n(i)-5);
end
figure
stem(n, parab,"filled", "linewidth", 1.5, "color", [62/256 19/256 191/256])
plt=[];
plt.XLabel='Discrete time n'
plt.YLabel="p[n]";
plt.XGrid="on";
plt.YGrid="on";
plt.ShowBox="off";
setPlotProp(plt)

figure
stem(n, parab_5,"filled", "linewidth", 1.5, "color", "k")
plt=[];
plt.XLabel='Discrete time n'
plt.YLabel="p[n-5]";
plt.XGrid="on";
plt.YGrid="on";
plt.ShowBox="off";
setPlotProp(plt)