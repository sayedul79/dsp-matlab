clc
clear all
close all
format long

N=input('Enter number of Terms : ')
n=1:1:N;
error=zeros(1,N);

denom=1;
for i=0:N-1
    denom=2+(2*(N-i)+1)^2/denom;
    pi_appr=4/(1+1/denom);
    error(i+1)=pi-pi_appr;%(Index Value Should be started from 1 but error equation's start from 0(i+1 actually denotes index)
end
display(pi_appr)
plot(n,error,'rx-');
%semilogx(n,error,'rx-');
xlabel('Number of Term');
ylabel('Error')