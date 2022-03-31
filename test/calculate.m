function varargout = calculate(varargin)
% CALCULATE MATLAB code for calculate.fig
%      CALCULATE, by itself, creates a new CALCULATE or raises the existing
%      singleton*.
%
%      H = CALCULATE returns the handle to a new CALCULATE or the handle to
%      the existing singleton*.
%
%      CALCULATE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCULATE.M with the given text1 arguments.
%
%      CALCULATE('Property','Value',...) creates a new CALCULATE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before calculate_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to calculate_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help calculate

% Last Modified by GUIDE v2.5 30-Mar-2022 20:34:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @calculate_OpeningFcn, ...
                   'gui_OutputFcn',  @calculate_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before calculate is made visible.
function calculate_OpeningFcn(hObject, eventdata, handles, varargin)
set(handles.text1,'string','');%%��ʼ���ı���1
set(handles.text2,'string','');%%��ʼ���ı���2
set(handles.rad,'value',1);%%Ĭ��ʹ�û���
set(handles.angle,'value',0);
format long
% This function has no text3 args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to calculate (see VARARGIN)

% Choose default command line text3 for calculate
handles.text3 = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes calculate wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = calculate_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning text3 args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line text3 from handles structure
varargout{1} = handles.text3;


% --- Executes on button press in sin.
function sin_Callback(hObject, eventdata, handles)
strText2Out = get(handles.text1,'String');
[boolErrorInput,strText2Out] = strInputJudgFcn(strText2Out,handles);
if boolErrorInput
    return
end
boolMode = get(handles.rad,'value');
strText2Out = mysin(strText2Out,boolMode); %��������ֵ������2ΪboolMode�ͱ�����0��ʾ�Ƕ�1��ʾ����
set(handles.text2,'string',num2str(strText2Out,12)); %���
% set(handles.text3,' ');
% hObject    handle to sin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in cos.
function cos_Callback(hObject, eventdata, handles)
strText2Out = get(handles.text1,'String');
[boolErrorInput,strText2Out] = strInputJudgFcn(strText2Out,handles);
if boolErrorInput
    return
end
boolMode = get(handles.rad,'value');
strText2Out = mycos(strText2Out,boolMode); %��������ֵ,����2ΪboolMode�ͱ�����0��ʾ�Ƕ�1��ʾ����
set(handles.text2,'string',num2str(strText2Out,12));%���
% hObject    handle to cos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in tan.
function tan_Callback(hObject, eventdata, handles)
strText2Out = get(handles.text1,'String');
[boolErrorInput,strText2Out] = strInputJudgFcn(strText2Out,handles);
if boolErrorInput
    return
end
boolMode = get(handles.rad,'value');
strText2Out = mytan(strText2Out,boolMode);%��������ֵ������2ΪboolMode�ͱ�����0��ʾ�Ƕ�1��ʾ����
set(handles.text2,'string',num2str(strText2Out,12));%���
% hObject    handle to tan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in asin.
function asin_Callback(hObject, eventdata, handles)
strText2Out = get(handles.text1,'String');
[boolErrorInput,strText2Out] = strInputJudgFcn(strText2Out,handles);
if boolErrorInput
    return
end
boolMode = get(handles.rad,'value');
strText2Out = myasin(strText2Out,boolMode);%���㷴����ֵ������2ΪboolMode�ͱ�����0��ʾ�Ƕ�1��ʾ����
if boolMode == 1 %����ɦ���ʾ
    strText2Out = strText2Out/pi;
    strText2Out = num2str(strText2Out,12);
    strText2Out = strcat(strText2Out,'��');
else
    strText2Out = num2str(strText2Out,12);
    strText2Out = strcat(strText2Out,'��');
end
set(handles.text2,'string',strText2Out);%���
% hObject    handle to asin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in acos.
function acos_Callback(hObject, eventdata, handles)
strText2Out = get(handles.text1,'String');
[boolErrorInput,strText2Out] = strInputJudgFcn(strText2Out,handles);
if boolErrorInput
    return
end
boolMode = get(handles.rad,'value');
strText2Out = myacos(strText2Out,boolMode);%���㷴���Һ���ֵ������2ΪboolMode�ͱ�����0��ʾ�Ƕ�1��ʾ����
if boolMode == 1 %����ɦ���ʾ
    strText2Out = strText2Out/pi;
    strText2Out = num2str(strText2Out,12);
    strText2Out = strcat(strText2Out,'��');
else
    strText2Out = num2str(strText2Out,12);
    strText2Out = strcat(strText2Out,'��');
end
set(handles.text2,'string',strText2Out);%���
% hObject    handle to acos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in atan.
function atan_Callback(hObject, eventdata, handles)
strText2Out = get(handles.text1,'String');
[boolErrorInput,strText2Out] = strInputJudgFcn(strText2Out,handles);
if boolErrorInput
    return
end
boolMode = get(handles.rad,'value');
strText2Out = myatan(strText2Out,boolMode);%���㷴���к���ֵ������2ΪboolMode�ͱ�����0��ʾ�Ƕ�1��ʾ����
if boolMode == 1 %����ɦ���ʾ
    strText2Out = strText2Out/pi;
    strText2Out = num2str(strText2Out,12);
    strText2Out = strcat(strText2Out,'��');
else
    strText2Out = num2str(strText2Out,12);
    strText2Out = strcat(strText2Out,'��');
end
set(handles.text2,'string',strText2Out);%���
set(handles.text2,'string',num2str(strText2Out,12));%���
% hObject    handle to atan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in angle.
function angle_Callback(hObject, eventdata, handles) %�Ƕ�ѡ��
set(handles.rad,'value',0);
set(handles.pi,'enable','off');
% hObject    handle to angle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of angle


% --- Executes on button press in rad.
function rad_Callback(hObject, eventdata, handles) %����ѡ��
set(handles.angle,'value',0);
set(handles.pi,'enable','on');
% hObject    handle to rad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rad


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
strText1Out = get(handles.text1,'string');
strText1Out = strcat(strText1Out,'1'); %��1�ӵ���������
set(handles.text1,'string',strText1Out);
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
strText1Out = get(handles.text1,'string');
strText1Out = strcat(strText1Out,'2'); %��2�ӵ���������
set(handles.text1,'string',strText1Out);
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
strText1Out = get(handles.text1,'string');
strText1Out = strcat(strText1Out,'3'); %��3�ӵ���������
set(handles.text1,'string',strText1Out);
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
strText1Out = get(handles.text1,'string');
strText1Out = strcat(strText1Out,'4'); %��4�ӵ���������
set(handles.text1,'string',strText1Out);
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
strText1Out = get(handles.text1,'string');
strText1Out = strcat(strText1Out,'5'); %��5�ӵ���������
set(handles.text1,'string',strText1Out);
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
strText1Out = get(handles.text1,'string');
strText1Out = strcat(strText1Out,'6'); %��6�ӵ���������
set(handles.text1,'string',strText1Out);
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
strText1Out = get(handles.text1,'string');
strText1Out = strcat(strText1Out,'7'); %��7�ӵ���������
set(handles.text1,'string',strText1Out);
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
strText1Out = get(handles.text1,'string');
strText1Out = strcat(strText1Out,'8'); %��8�ӵ���������
set(handles.text1,'string',strText1Out);
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
strText1Out = get(handles.text1,'string');
strText1Out = strcat(strText1Out,'9'); %��9�ӵ���������
set(handles.text1,'string',strText1Out);
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
strText1Out = get(handles.text1,'string');
strText1Out = strcat(strText1Out,'0'); %��10�ӵ���������
set(handles.text1,'string',strText1Out);
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in point.
function point_Callback(hObject, eventdata, handles)
strText1Out = get(handles.text1,'string');
strText1Out = strcat(strText1Out,'.'); %��0�ӵ���������
set(handles.text1,'string',strText1Out);
% hObject    handle to point (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pi.
function pi_Callback(hObject, eventdata, handles)
strText1Out = get(handles.text1,'string');
strText1Out = strcat(strText1Out,'��'); %�Ѧмӵ���������
set(handles.text1,'string',strText1Out);
% hObject    handle to pi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Del.
function Del_Callback(hObject, eventdata, handles)
strText1Out = get(handles.text1,'string');
strText1Out = strText1Out(1:end-1);%ɾ����������һ���ַ�
set(handles.text1,'string',strText1Out);
% hObject    handle to Del (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in AC.
function AC_Callback(hObject, eventdata, handles)
set(handles.text1,'string','');%����
set(handles.text2,'string','');
% hObject    handle to AC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in division.
function division_Callback(hObject, eventdata, handles)
strText1Out = get(handles.text1,'string');
strText1Out = strcat(strText1Out,'/');%��/�ӵ���������
set(handles.text1,'string',strText1Out);
% hObject    handle to division (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function text2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% --- Executes during object creation, after setting all properties.
function text1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in sign.
function sign_Callback(hObject, eventdata, handles)
strText1Out = get(handles.text1,'string');
if find(strText1Out == '-')
    strText1Out = strText1Out(2:end);%����
else
    strText1Out = ['-' strText1Out];%����
end
set(handles.text1,'string',strText1Out);
% hObject    handle to sign (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
