 function y=mytan(x,z)
format long
if z==0
y1=mysin(x,0);
y2=mycos(x,0);
y=y1/y2;
else 
    y1=mysin(x,1);
    y2=mycos(x,1);
    y=y1/y2;
end
