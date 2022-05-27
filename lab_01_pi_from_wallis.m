clc;
clear;
close all;
multiply=1;
iteration=1:5000;
len=length(iteration);
pi_array=zeros(1, len);
error=zeros(1, len);
%% Approximate the value of pi and determine error
for i=iteration;
    series=4*i^2/(4*i^2-1);
    multiply=multiply*series;
    appro_pi=2*multiply
    er=abs(pi-appro_pi);
    pi_array(1,i)=appro_pi;
    error(1, i)=er;
end
%% Wallis product series convergence to pi
plt=Plot(iteration, pi_array, [1,len],[pi pi])
plt.XLabel='Number of iteration in log scale'
plt.YLabel="Value of pi";
plt.Title="Approximated Value of Pi";
plt.XGrid="on";
plt.YGrid="on";
plt.XScale="log";
plt.XLim=[1 len];
plt.Legend = {'Approximated \pi', '\pi'};
plt.LegendLoc="southeast"
plt.Colors={[170/256 10/256 10/256],[25/256 25/256 112/256]};
plt.BoxDim = [4, 3];
plt.ShowBox="off";
plt.export('problemOnePi.png'); 
%% Plot the absolute value of error
plt=Plot(iteration, error)
plt.XLabel='Number of iteration in log scale'
plt.YLabel="Error";
plt.Title="Absolute Value of Error";
plt.XGrid="on";
plt.YGrid="on";
plt.XScale="log";
plt.LineWidth=2;
plt.Colors={[0 0 139/256]};
plt.XLim=[1 len];
plt.BoxDim = [4, 3];
plt.ShowBox="off";
plt.export('problemOneError.png'); 
