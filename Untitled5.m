factor(5)

function output=factor(input)
if (input<=0)
    output=1;
else
    output=input*factor(input-1);
end
end