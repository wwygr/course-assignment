%% 
%%%%%%%%%       arctan����������          %%%%%%%%%%%%%%
%������������֣���Χ��-128��127��
%���������arctan��������õĽǶ�
%% 
function ArctanResult = Arctan(InputValue)
  if (InputValue > 127)
      msgbox('Out of range, please re-enter!');
  elseif (InputValue < -128)
      msgbox('Out of range, please re-enter!'); %���볬��ȡֵ��Χ������ʾ�������롣
  else
    if ((InputValue >= -1) && (InputValue <= 1)) %�����������ķ�ΧΪ[-1,1]�������̩��չ����ʽ�ƽ���
      Temp = InputValue;
      ArctanResult = InputValue; %arctan����̩��չ��ʽ�ĵ�һ��
      i = 1;
      while (Abs(Temp) >= 1e-10) %������ֵС����;���ʱ����ֹͣ���㡣
          Temp = (-1) * Temp * (2 * i - 1) * InputValue * InputValue / (2 * i + 1); %arctan����̩��չ��ʽ�ж�Ӧ��ÿһ��
          ArctanResult = ArctanResult + Temp; %�����ۼӣ��õ�arctan������̩��չ��ʽ��
          i = i + 1;
      end
    else                                        %�����������ķ�Χ����[-1,1],�������ʼ����ƽ���
      Temp = 1 / InputValue;
      ArctanResult = 1 / InputValue;
      j = 1;
      while (Abs(Temp) >= 1e-10) %������ֵС����;���ʱ����ֹͣ���㡣
          Temp = (-1) * Temp * (2 * j - 1) * (1 / InputValue) * (1 / InputValue) / (2 * j + 1);
          ArctanResult = ArctanResult + Temp;
          j = j + 1;
      end
      if (InputValue > 0)
          ArctanResult = pi / 2 - ArctanResult;
      else
          ArctanResult = -( pi / 2 + ArctanResult);
      end
    end
  ArctanResult = ConvertToAngle(ArctanResult);
  ArctanResult = roundn(ArctanResult, -2); %������λС��
  end
%% 
%ȡ����ֵ
  function AbsResult = Abs(x)
      if (x < 0)
          AbsResult = -x;
      else
          AbsResult = x;
      end
  end
%% 
%������ת��Ϊ�Ƕ�
    function Angle = ConvertToAngle(x)
        Angle = x * (180 / pi);
    end
end
