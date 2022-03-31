function y=get_precision_cos(x)
y1=cos(x);
y2=mycos(x);
y0=abs(y1-y2);
if y0<=10^(-15)
    y=y2;
else
    y=inf;
end