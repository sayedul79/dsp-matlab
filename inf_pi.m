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