  function y=mycos(A,z)
format long
 if z==0
 x = A/180*pi;
 else
     x=A;
 end
% ��̩��չ��ʽ��cos(x)
format long
x=mod(x,2*pi); % ������[0,2��]֮��
e=10^(-15); % ����
y=0;
last=1; % ��¼��һѭ���ۼ���
k=0; % ѭ������
while(any(abs(last)>e)) % ����������Ԫ�صľ��ȶ�����Ҫ��ʱ�˳�ѭ��
y = y + last;
last=last .* (-1) .*x.^2 /(k+1) /(k+2); 
k=k+2; % ����ֱ����k����̩�չ�ʽ���2k��ֻ����k��ÿ������2�ġ�
end

 if x==pi/2
     y=0;
 elseif x==3*pi/2
     y=0;
 end

     
     
     




 
