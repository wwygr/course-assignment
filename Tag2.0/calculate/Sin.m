%%%%%%%%%       sin����������          %%%%%%%%%%%%%%
%����������Ƕ�
%�������������ֵ
function result=Sin(input_angle)
 if input_angle >= 0%��ֵ�Ƕȼ���
        angle = pi * (input_angle / 180);%�Ƕ�ת��Ϊ����		    
        result = 0;  %����������ֵ
        s = 1;%�ۼ������					
        denominator = 1;%��ĸ����ֵ				
        numerator = angle;%���Ӹ���ֵ			
        i=1;
        while numerator / denominator >= 1e-10%���㾫�ȣ�����sin̩��չ��ʽ������
            result = result + s * numerator / denominator;%�ۼ�һ��
            numerator = numerator* angle * angle;%����һ�����
            denominator = denominator * 2 * i * (2 * i + 1);%����һ���ĸ
            s =s * -1;%����һ�����
            i = i + 1;
        end
    else%��ֵ�Ƕȼ��㣬�����������ֵһ��
        angle = pi * (abs(input_angle) / 180);
        result = 0;  
        s = 1;						
        denominator = 1;				
        numerator = angle;			
        i=1;
        while numerator / denominator >= 1e-10
            result = result + s * numerator / denominator;
            numerator = numerator* angle * angle;
            denominator = denominator * 2 * i * (2 * i + 1);
            s =s * -1;
            i = i + 1;
        end
        result = -result;
    end
    result = roundn(result,-2);%�������뱣����λС��
