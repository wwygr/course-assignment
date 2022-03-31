 function y=mysin(A,z)
 if z==0
  x = A/180*pi;
 else
     x=A;
 end
% 用泰勒展开式求sin(x)
format long
x=mod(x,2*pi); % 限制在[0,2π]之间
e=10^(-15); % 精度
y=0;
last=x; % 记录上一循环累加项
k=1; % 循环变量
while(any(abs(last)>e)) % 当矩阵所有元素的精度都满足要求时退出循环
y = y + last;
last=last .* (-1) .*x.^2 /(k+1) /(k+2); % sinx=x-x^3/3!+x^5/5!+...+(-1)^(k-1)*x^(2k-1)/(2k-1)!
k=k+2; % 这里直接用k代表泰勒公式里的2k，只不过k是每次增加2的。
end

if x==pi;
    y=0;
end

