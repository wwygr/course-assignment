function [boolErrorInput,strText2Out]= strInputJudgFcn(strText2Out,handles)
%strInputJudgFcn �����������ݽ����жϣ����Ƿ������ѧ���ʽ
%   boolErrorInput Ϊ�ж������Ƿ���ȷ������ȷʱ��ֵΪ1����ȷʱ��ֵΪ0
%   strText2Out Ϊ������
if isempty(strText2Out)
    strText2Out = '����������';
    set(handles.text2,'string',strText2Out);
    boolErrorInput = 1;
    return
end
boolErrorInput = 0; 
if strText2Out(1) == '��'
    strText2Out = ['pi' strText2Out(2:end)]; %�滻��һ����
end
strText2Out = strrep(strText2Out,'��','*pi');%�滻��
try
    strText2Out = eval(strText2Out); %�ж������Ƿ������
catch
    set(handles.text2,'string','�������');
    boolErrorInput = 1;
    return
end
end

