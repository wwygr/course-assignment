 function y=myasin(x,z)

if x>1
    y=NaN;
elseif x<-1
    y=NaN;
else
    t1=1;
an=x;
t2=x;
x=x*x;
i=3;
while (i<10000000)
t1=t1*(i-2)/(i-1);
t2=t2*x;
an=an+(t1*t2/i);
i=i+2;
end
if eq(z,1)
    y1=an;
    if y1>0.49*pi
        y=pi/2;
    elseif y1<-0.49*pi
            y=-pi/2;
    else y=y1;
    end

 
elseif eq(z,0)
       y2=an*180/pi;
        if y2>89.9
        y=90;
        y=roundn(y,-12); 
    elseif y2<-89.9
            y=-90;
            y=roundn(y,-12); 
    else y=y2;
        y=roundn(y,-12); 
        end
end
end
