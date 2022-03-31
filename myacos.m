 function y0=myacos(x,z)
 
 if x>1
    y0=NaN;
elseif x<-1
    y0=NaN;
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
            y=-0.5*pi;
    else y=y1;
    end
  y0=pi/2-y;
  y0=roundn(y0,-12);

 
elseif eq(z,0)
    y1=an;
    if y1>0.49*pi
        y=pi/2;
    elseif y1<-0.49*pi
            y=-0.5*pi;
    else y=y1;
    end
  y2=pi/2-y;
  y0=y2*180/pi;
  y0=roundn(y0,-12);
% elseif eq(z,0)
%        y2=an*180/pi;
%         if y2>44.9
%         y=90;
%         y=roundn(y,-12); 
%     elseif y2<-44.9
%             y=0;
%             y=roundn(y,-12); 
%     else y=y2;
%         y=roundn(y,-12); 
%         end
%   y0=pi/2-y;
%   y0=roundn(y0,-12);
% end
end
 end
