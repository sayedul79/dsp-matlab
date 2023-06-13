clc;
clear;
close all;
n=-5:10;
step=zeros(size(n));
step_5=zeros(size(n));
for i=1:length(n)
    step(i)=10*StepFunction(n(i));
    step_5(i)=10*StepFunction(n(i)-5);
end
figure
stem(n, step,"filled", "linewidth", 1.5, "color", [62/256 19/256 191/256])
plt=[];
plt.XLabel='Discrete time n'
plt.YLabel="u[n]";
plt.XGrid="on";
plt.YGrid="on";
plt.ShowBox="off";
setPlotProp(plt)

figure
stem(n, step_5,"filled", "linewidth", 1.5, "color", "k")
plt=[];
plt.XLabel='Discrete time n'
plt.YLabel="u[n-5]";
plt.XGrid="on";
plt.YGrid="on";
plt.ShowBox="off";
setPlotProp(plt)