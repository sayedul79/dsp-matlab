clc;
clear;
close all;
n=-5:53;
ramp_0=zeros(size(n));
ramp_10=zeros(size(n));
step_21=zeros(size(n));
parabolic_31=zeros(size(n));
step_46=zeros(size(n));
delt_50=zeros(size(n));
for i=1:length(n)
    ramp_0(i)=5*RampFunction(n(i));
    ramp_10(i)=-5*RampFunction(n(i)-10);
    step_21(i)=-100*StepFunction(n(i)-21);
    parabolic_31(i)=0.5*parabolic(n(i)-31);
    step_46(i)=StepFunction(-n(i)+46);
    delt_50(i)=30*DeltaFunction(n(i)-50);
end
signal=(ramp_0+ramp_10+step_21+parabolic_31).*step_46+delt_50;
figure
stem(n, ramp_0,"filled", "linewidth", 1.5, "color", [62/256 19/256 191/256])
hold on
stem(n, ramp_10,"filled", "linewidth", 1.5, "color", [8/256 156/256 50/256])
stem(n, step_21,"filled", "linewidth", 1.5, "color", [19/256 191/256 171/256])
stem(n, parabolic_31,"filled", "linewidth", 1.5, "color", "m")
stem(n, step_46,"filled", "linewidth", 1.5, "color", [199/256 14/256 106/256])
leg=legend("$+5r[n]$", "$-5r[n-10]$", "$-100u[n-21]$", "$0.5p[n-31]$", "$u[-n+46]$");
set(leg, "Interpreter", "latex")
plt=[];
plt.XLabel='Discrete time n'
plt.YLabel="x[n]";
plt.XGrid="on";
plt.YGrid="on";
plt.ShowBox="off";
plt.XLim=[-5 50];
setPlotProp(plt)

figure
stem(n, signal,"filled", "linewidth", 1.5, "color", [62/256 19/256 191/256])
plt=[];
plt.XLabel='Discrete time n'
plt.YLabel="x[n]";
plt.XGrid="on";
plt.YGrid="on";
plt.ShowBox="off";
plt.XLim=[-5 55];
setPlotProp(plt)