clc;
clear;
close all;
n=-5:60;
%% All fundamental signals combine to create another signal
delt_0=zeros(size(n));
sin_5=zeros(size(n));
sin_26=zeros(size(n));
step_31=zeros(size(n));
ramp_36=zeros(size(n));
ramp_46=zeros(size(n));
step_46=zeros(size(n));
parabolic_48=zeros(size(n));
step_56=zeros(size(n));
for i=1:length(n)
    delt_0(i)=40*DeltaFunction(n(i));
    sin_5(i)=(25*StepFunction(n(i))+10*sin(2*pi*.09*(n(i)-5))).*StepFunction(n(i)-5);
    sin_26(i)=-10*sin(2*pi*.09*(n(i)-5))*StepFunction(n(i)-26);
    step_31(i)=-50*StepFunction(n(i)-31);
    ramp_36(i)=5*RampFunction(n(i)-36);
    ramp_46(i)=-5*RampFunction(n(i)-46);
    step_46(i)=-25*StepFunction(n(i)-46);
    parabolic_48(i)=parabolic(n(i)-48);
    step_56(i)=StepFunction(-n(i)+56);
end
signal=delt_0+sin_5+sin_26+step_31+ramp_36+...
    ramp_46+step_46+parabolic_48.*step_56;
%% Plot all fundamental signal
figure
stem(n, delt_0)
hold on
stem(n, sin_5, "filled", "color", "r")
stem(n, sin_26, "filled", "color", "k")
stem(n, step_31, "filled", "color", [0.6350 0.0780 0.1840])
leg=legend("$40\cdot\delta[n]$", "$25u[n]+10\sin[n-5]$", "$-10sin[n-5]\cdot u[n-26]$", "$-50u[n-31]$");
set(leg, "Interpreter", "latex")
plt=[];
plt.XLabel='Discrete time n'
plt.YLabel="x[n]";
plt.XGrid="on";
plt.YGrid="on";
plt.ShowBox="off";
plt.XLim=[-5 60];
setPlotProp(plt)

figure
stem(n, ramp_36, "filled", "color", "k")
hold on
stem(n, ramp_46,"filled", "color", [0.6350 0.0780 0.1840])
stem(n, step_46, "filled", "color", "b")
leg=legend("$+5\cdot r[n-36]$", "$-5\cdot r[n-46]$", "$-25\cdot u[n-46]$");
set(leg, "Interpreter", "latex")
plt=[];
plt.XLabel='Discrete time n'
plt.YLabel="x[n]";
plt.XGrid="on";
plt.YGrid="on";
plt.ShowBox="off";
plt.XLim=[-5 60];
setPlotProp(plt)

figure
yyaxis left
ylabel("x[n]")
stem(n, step_56,"filled", "color", [0.6350 0.0780 0.1840])
yyaxis right
stem(n, parabolic_48, "filled", "color", "k")
ax=gca;
ax.YAxis(1).Color=[0.6350 0.0780 0.1840];
leg=legend("$p[n-48]$", "$u[-n+56]$");
set(leg, "Interpreter", "latex")
plt=[];
plt.XLabel='Discrete time n'
plt.XGrid="on";
plt.YGrid="on";
plt.ShowBox="off";
plt.XLim=[-5 60];
setPlotProp(plt)
%% Plot combined signal
figure
stem(n, signal,"filled", "linewidth", 1.5, "color", [62/256 19/256 191/256]); 
ylim([-30 70]);
plt=[];
plt.XLabel='Discrete time n'
plt.YLabel="x[n]";
plt.XGrid="on";
plt.YGrid="on";
plt.ShowBox="off";
plt.XLim=[-5 60];
setPlotProp(plt)