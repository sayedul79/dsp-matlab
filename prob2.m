clc
clear 
close all

N=10:10:2000;
pi_arr=zeros(1,200);
error=zeros(1,200);

%% Estimating The Value of PI
for i=1:200
    denom=2;
    n=N(i);
    for j=1:n-1
        denom=2+((2*(n-j)+1)^2)/denom;
    end
    pi_arr(i)=4/(1+1/denom);
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