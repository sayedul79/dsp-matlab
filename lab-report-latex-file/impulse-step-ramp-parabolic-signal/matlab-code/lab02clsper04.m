clc;
clear;
close all;
n=-3:13;
delt=zeros(size(n));
delt_5=zeros(size(n));
for i=1:length(n)
    delt(i)=DeltaFunction(n(i));
    delt_5(i)=DeltaFunction(n(i)-5);
end
figure
stem(n, delt,"filled", "linewidth", 1.5, "color", [62/256 19/256 191/256])
plt=[];
plt.XLabel='Discrete time n'
plt.YLabel="impulse[n]";
plt.XGrid="on";
plt.YGrid="on";
plt.ShowBox="off";
setPlotProp(plt)

figure
stem(n, delt_5,"filled", "linewidth", 1.5, "color", "k")
plt=[];
plt.XLabel='Discrete time n'
plt.YLabel="impulse[n-5]";
plt.XGrid="on";
plt.YGrid="on";
plt.ShowBox="off";
setPlotProp(plt)