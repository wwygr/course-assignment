 function y=mysin(A,z)
 if z==0
  x = A/180*pi;
 else
     x=A;
 end
% ��̩��չ��ʽ��sin(x)
format long
x=mod(x,2*pi); % ������[0,2��]֮��
e=10^(-15); % ����
y=0;
last=x; % ��¼��һѭ���ۼ���
k=1; % ѭ������
while(any(abs(last)>e)) % ����������Ԫ�صľ��ȶ�����Ҫ��ʱ�˳�ѭ��
y = y + last;
last=last .* (-1) .*x.^2 /(k+1) /(k+2); % sinx=x-x^3/3!+x^5/5!+...+(-1)^(k-1)*x^(2k-1)/(2k-1)!
k=k+2; % ����ֱ����k����̩�չ�ʽ���2k��ֻ����k��ÿ������2�ġ�
end

if x==pi;
    y=0;
end

