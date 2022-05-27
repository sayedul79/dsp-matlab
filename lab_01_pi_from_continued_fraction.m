clc;
clear;
close all;
iteration=1:2000;
len=length(iteration);
error=zeros(1, len);
pi_array=zeros(1,len);
%% Approximate the value of pi and determine error
for n=iteration
    appro_pi=4/FourByPi(n,1);
    disp(appro_pi);
    er=abs(pi-appro_pi);
    pi_array(1,n)=appro_pi;
    error(1,n)=er;
end
%% Continued fraction series convergence to pi
plt=Plot(iteration, pi_array, [1,len],[pi pi])
plt.XLabel='Number of iteration in log scale'
plt.YLabel="Value of pi";
plt.Title="Approximated Value of Pi";
plt.XGrid="on";
plt.YGrid="on";
plt.XScale="log";
plt.XLim=[1 len];
plt.Legend = {'Approximated \pi', '\pi'};
plt.Colors={[170/256 10/256 10/256],[25/256 25/256 112/256]};
plt.BoxDim = [4, 3];
plt.ShowBox="off";
plt.export('problemTwoPi.png'); 
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
plt.export('problemTwoError.png'); 
disp(appro_pi)
%% Define a recursive function
function y=FourByPi(i, ctr)
if (i==0)
    y=0;
    return;
end
x = ((2*ctr)-1)^2 / (2 + FourByPi(i - 1, ctr + 1));
if ctr == 1
    y=x+1;
    return
else
    y=x+0;
    return
end
end