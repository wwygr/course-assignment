function y=get_precision_atan(x,z)
y1=atan(x);
y2=myatan(x,z);
y3=abs(y1-y2);
if y3<=10^(-12)
    y=y2;
else
    y=inf;
end