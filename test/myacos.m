 function y=myarccos(x,z)
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
    if an>0.99*pi
        y1=pi/2;
        y1=roundn(y1,-12); 
    elseif an<-0.99*pi
            y1=0;
            y1=roundn(y1,-12); 
    elseif -1.5709<an<1.5709
            y1=pi/2;
            y1=roundn(y1,-12); 
    else y1=an;
        y1=roundn(y1,-12); 
    end
  y=pi/2-y1;
  y=roundn(y,-12); 
  
elseif eq(z,0)
       y2=an*180/pi;
        if y2>89.9
        y0=90;
        y0=roundn(y0,-12); 
    elseif y2<-89.9
            y0=0;
            y0=roundn(y0,-12); 
    else y0=y2;
        y0=roundn(y0,-12); 
        end
        y=90-y0;
end

