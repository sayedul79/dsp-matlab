s=0;
iteration=0:10;
error=zeros(1, length(iteration));
for n=iteration;
    a=factorial(2*n)/(factorial(n)*factorial(n));
    b=(16^n)*(2*n+1);
    series=3*a/b;
    s=s+series;
    er=abs(pi-s);
    error(:,n+1)=er;
end
stem(1:length(error), error)
display(s)