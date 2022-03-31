function y=get_precision_arcsin(x,z)
y1=acos(x);
y2=myacos(x,z);
y3=abs(y1-y2);
if y3<=10^(-12)
    y=y2;
else
    y=inf;
end