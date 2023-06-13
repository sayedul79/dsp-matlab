clc;
clear;
close all;
n=-5:60;
step_0=zeros(size(n));
step_11=zeros(size(n));
ramp_21=zeros(size(n));
ramp_41=zeros(size(n));
step_46=zeros(size(n));
impulse_48=zeros(size(n));
for i=1:length(n)
    step_0(i)=10*StepFunction(n(i));
    step_11(i)=-20*StepFunction(n(i)-11);
    ramp_21(i)=RampFunction(n(i)-21);
    ramp_41(i)=-1*RampFunction(n(i)-41);
    step_46(i)=-10*StepFunction(n(i)-46);
    impulse_48(i)=-10*DeltaFunction(n(i)-48);
end
signal=step_0+step_11+ramp_21+ramp_41+step_46+impulse_48;
figure
stem(n, step_0,"filled", "linewidth", 1.5, "color", [62/256 19/256 191/256])
hold on
stem(n, step_11,"filled", "linewidth", 1.5, "color", [8/256 156/256 50/256])
stem(n, ramp_21,"filled", "linewidth", 1.5, "color", [19/256 191/256 171/256])
stem(n, ramp_41,"filled", "linewidth", 1.5, "color", "m")
stem(n, step_46,"filled", "linewidth", 1.5, "color", [199/256 14/256 106/256])
stem(n, impulse_48,"filled", "linewidth", 1.5, "color", "k")
leg=legend("$10\cdot u[n]$", "$-20u[n-11]$", "$r[n-21]$", "$-r[n-41]$", "$-10u[n-46]$", "$-10\delta[n-48]$");
set(leg, "Interpreter", "latex")
ylim([-25 40]);
plt=[];
plt.XLabel='Discrete time n'
plt.YLabel="x[n]";
plt.XGrid="on";
plt.YGrid="on";
plt.ShowBox="off";
plt.XLim=[-5 60];
setPlotProp(plt)
figure
stem(n, signal,"filled", "linewidth", 1.5, "color", [62/256 19/256 191/256])
plt=[];
plt.XLabel='Discrete time n'
plt.YLabel="x[n]";
plt.XGrid="on";
plt.YGrid="on";
plt.ShowBox="off";
plt.XLim=[-5 60];
plt.YLim=[-10.5 10.5];
setPlotProp(plt)