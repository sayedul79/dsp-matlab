clc
clear 
close all

N=10:10:1000;
pi_arr=zeros(1,100);
error=zeros(1,100);

%% Estimating The Value of PI
for i=1:100
    product=1;
    multiplier=2;
    n=N(i);
    for j=1:n
        pterm=multiplier/(multiplier-1);
        nterm=multiplier/(multiplier+1);
        product=product*pterm*nterm;
        multiplier=multiplier+2;
    end
    pi_arr(i)=product*2;
    error(i)=pi-pi_arr(i);
end

%% Plotting Approximated Value
figure
plot(N,pi_arr,'color',[0,0,0.5],'linewidth',1.5,'marker','x')
hold on
line([0,N(end)],[pi,pi],'color',[0,0.5,0],'linewidth',2)
title('Approximated Value of PI')
hold off
grid on

%% Plotting Error in Approximation vs Number of Terms
figure
plot(N,error,'r-*')
title('Error')
grid on
