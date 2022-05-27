clc;
clear;
close all;
s=0;
iteration=0:10;
len=length(iteration);
pi_array=zeros(1, len);
error=zeros(1, len);
%% Approximate the value of pi and determine error
for n=iteration;
    a=factorial(2*n)/(factorial(n)*factorial(n));
    b=(16^n)*(2*n+1);
    series=3*a/b;
    s=s+series;
    er=abs(pi-s);
    pi_array(1,n+1)=s;
    error(:,n+1)=er;
end
%% ArcSin series convergence to pi
figure
plot(iteration, pi_array, 'color', 'b')
hold on;
line([0 len], [pi pi],'color', 'r', "linewidth", 1.5);
xlabel('Number of iteration')
ylabel("Value of pi");
title("Approximated Value of Pi")
grid on
xlim([0 len])
%% Plot the absolute value of error
figure
stem(1:length(error), error, "color","r", "linewidth",2);
xlabel("Number of iteration");
ylabel("Error");
title("Absolute Value of Error");
display(s)