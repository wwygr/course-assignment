function [boolErrorInput,strText2Out]= strInputJudgFcn(strText2Out,handles)
%strInputJudgFcn 对输入框的内容进行判断，看是否符合数学表达式
%   boolErrorInput 为判断输入是否正确，不正确时幅值为1，正确时幅值为0
%   strText2Out 为结果输出
if isempty(strText2Out)
    strText2Out = '请输入数字';
    set(handles.text2,'string',strText2Out);
    boolErrorInput = 1;
    return
end
boolErrorInput = 0; 
if strText2Out(1) == 'π'
    strText2Out = ['pi' strText2Out(2:end)]; %替换第一个π
end
strText2Out = strrep(strText2Out,'π','*pi');%替换π
try
    strText2Out = eval(strText2Out); %判断输入是否可运行
catch
    set(handles.text2,'string','输入出错');
    boolErrorInput = 1;
    return
end
end

