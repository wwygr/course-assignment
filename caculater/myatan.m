function y0 = myatan(x,z)
n=0;
y1=(-1)^n*x^(2*n+1)/(2*n+1);
y=y1;
while(n<=100)
n=n+1;
y1=(-1)^n*x^(2*n+1)/(2*n+1);
y=y+y1;
end

y2=atan(x);
if eq(z,1)
    y0=y2;
elseif eq(z,0)
    y0=y2*180/pi;
end
% atan_self(double x)
% {
% //atan(x)=x-x^3/3+x^5/5-x^7/7+.....(-1<x<1)
% //return:[-pi/2,pi/2]
% 	double mult,sum,xx;
% 	sum=0;
% 	if(x==1){
% 		return pi/4;
% 	}
% 	if(x==-1){
% 		return -pi/4;
% 	}
% 
% 	((x>1||x<-1)?mult=1/x:mult=x);
% 	xx=mult*mult;
% 	
% 	for(int i=1;i<200;i+=2){
% 		sum+=mult*((i+1)%4==0?-1:1)/i;
% 		mult*=xx;
% 	}
% 	if(x>1||x<-1){
% 		return pi/2-sum;
% 	}
% 	else{
% 		return sum;
% 	}
% }