  function y=mycos(A,z)
format long
 if z==0
 x = A/180*pi;
 else
     x=A;
 end
% 用泰勒展开式求cos(x)
format long
x=mod(x,2*pi); % 限制在[0,2π]之间
e=10^(-15); % 精度
y=0;
last=1; % 记录上一循环累加项
k=0; % 循环变量
while(any(abs(last)>e)) % 当矩阵所有元素的精度都满足要求时退出循环
y = y + last;
last=last .* (-1) .*x.^2 /(k+1) /(k+2); 
k=k+2; % 这里直接用k代表泰勒公式里的2k，只不过k是每次增加2的。
end

 if x==pi/2
     y=0;
 elseif x==3*pi/2
     y=0;
 end

     
     
     




 
