clc;
clear;
close all;
s=0;
iteration=1:5000;
len=length(iteration);
pi_array=zeros(1,len);
error=zeros(1, len);
for k=iteration;
    series=1/k^2;
    s=s+series;
    appro_pi=sqrt(6*s);
    pi_array(1,k)=appro_pi;
    er=abs(pi-appro_pi);
    error(:,k)=er;
end
%% Leonar Euler series convergence to pi
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
plt.export('problemFivePi.png'); 
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
plt.export('problemFiveError.png'); 
disp(appro_pi) 