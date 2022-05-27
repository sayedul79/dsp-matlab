clc;
clear;
close all;
number=1:50000;
filter=isprime(number);
prime=number(filter);
multiply=1;
count=0
len=length(prime);
pi_array=zeros(1, len);
error=zeros(1, len);
for n=prime;
    series=n^2/(n^2-1);
    m=series;
    multiply=multiply*m;
    appro_pi=sqrt(6*multiply);
    er=abs(pi-appro_pi);
    count=count+1;
    pi_array(1,count)=appro_pi;
    error(1,count)=er;
end
%% Zeta function for z=2 series convergence to pi
plt=Plot(1:len, pi_array, [1,len],[pi pi])
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
plt.export('problemSixPi.png'); 
%% Plot the absolute value of error
plt=Plot(1:len, error)
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
plt.export('problemSixError.png'); 
disp(appro_pi) 