function varargout = compute_GPA_GUI(varargin)
% COMPUTE_GPA_GUI MATLAB code for compute_GPA_GUI.fig
%      COMPUTE_GPA_GUI, by itself, creates a new COMPUTE_GPA_GUI or raises the existing
%      singleton*.
%
%      H = COMPUTE_GPA_GUI returns the handle to a new COMPUTE_GPA_GUI or the handle to
%      the existing singleton*.
%
%      COMPUTE_GPA_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in COMPUTE_GPA_GUI.M with the given input arguments.
%
%      COMPUTE_GPA_GUI('Property','Value',...) creates a new COMPUTE_GPA_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before compute_GPA_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to compute_GPA_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help compute_GPA_GUI

% Last Modified by GUIDE v2.5 08-Sep-2017 16:52:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @compute_GPA_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @compute_GPA_GUI_OutputFcn, ...
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


% --- Executes just before compute_GPA_GUI is made visible.
function compute_GPA_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to compute_GPA_GUI (see VARARGIN)

% Choose default command line output for compute_GPA_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes compute_GPA_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = compute_GPA_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Load_score.
function Load_score_Callback(hObject, eventdata, handles)
% hObject    handle to Load_score (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global NUM TXT RAW
% �򿪳ɼ���
[filename, pathname] = uigetfile({'*.xls'; '*.xlsx'});
full_name = strcat(pathname,filename);
% ����ɼ�����Ϣ
[NUM,TXT,RAW] = xlsread(full_name);
% ��ʾ�����Ϣ��·�����༶�������γ�����
set(handles.Load_state,'string',full_name);
set(handles.Stu_num,'string',num2str(size(RAW,1)-1));
set(handles.Course_num,'string',num2str(size(RAW,2)-2));



function Load_state_Callback(hObject, eventdata, handles)
% hObject    handle to Load_state (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Load_state as text
%        str2double(get(hObject,'String')) returns contents of Load_state as a double


% --- Executes during object creation, after setting all properties.
function Load_state_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Load_state (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Quit.
function Quit_Callback(hObject, eventdata, handles)
% hObject    handle to Quit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(gcf);



function Stu_num_Callback(hObject, eventdata, handles)
% hObject    handle to Stu_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Stu_num as text
%        str2double(get(hObject,'String')) returns contents of Stu_num as a double


% --- Executes during object creation, after setting all properties.
function Stu_num_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Stu_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Course_num_Callback(hObject, eventdata, handles)
% hObject    handle to Course_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Course_num as text
%        str2double(get(hObject,'String')) returns contents of Course_num as a double


% --- Executes during object creation, after setting all properties.
function Course_num_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Course_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Compute_GPA.
function Compute_GPA_Callback(hObject, eventdata, handles)
% hObject    handle to Compute_GPA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global NUM RAW;
global GPA;
% ��ȡ�γ����Ϳγ�ѧ��
[~, credit] = get_course_credit(RAW);
% ���㼨��
[GPA,~] = compute_GPA(NUM,credit);
msgbox('�������');

% --- Executes on button press in Write_to_xls.
function Write_to_xls_Callback(hObject, eventdata, handles)
% hObject    handle to Write_to_xls (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global RAW;
global GPA;
sorted_result = Sort_result(RAW, GPA);
xlswrite('sorted_GPA_result.xls',sorted_result);
msgbox('�ѵ�������ǰ·����sorted_GPA_result.xls');

function [course, credit] = get_course_credit(RAW)
% Function:
% ��ȡ���������ѧ����Ϣ������ѧ�ź�������
% Input
% RAW: �γ̳ɼ�����һ��Ϊ��ͷ��ǰ���зֱ�Ϊѧ�ź��������ɼ��ӵ����п�ʼ��
%    ѧ��|����|�γ�1/���޿�/ѧ��1|�γ�2/���޿�/ѧ��2|
%     ** | ** |         **     |         **     |
%     ** | ** |         **     |         **     |
%     ** | ** |         **     |         **     |
% Output
% course: (1,n),cell���ͣ�������еĿγ���(n�ſγ�)
% credit: (1,n),double�������飬������пγ̶�Ӧ��ѧ��

num_course = size(RAW,2)-2; % ������ǰ���У�ѧ�š�������
course = null(num_course);
credit = null(num_course);
for i = 1:num_course
   course_name_credit = RAW{1,i+2}; %�γ�/���޿�/ѧ��
   course_credit = regexp(course_name_credit,'/','split'); %�з�
   course{i} = course_credit{1}; % �γ���
   credit(i) = str2double(course_credit(end)); % ѧ��
end

function [id, name] = get_id_name(RAW)
% Function:
% ��ȡ��������е�ѧ����Ϣ������ѧ�ź�������
% Input
% RAW: �γ̳ɼ�����һ��Ϊ��ͷ��ǰ���зֱ�Ϊѧ�ź��������ɼ��ӵ����п�ʼ��
%    ѧ��|����|�γ�1/���޿�/ѧ��|�γ�2/���޿�/ѧ��|
%     ** | ** |         **     |         **     |
%     ** | ** |         **     |         **     |
%     ** | ** |         **     |         **     |
% Output
% id: (1,m),cell���ͣ�������е�ѧ��(m��ѧ��)
% name: cell���ͣ�������е�����

num_stu = size(RAW,1)-1; % ��������ͷ
id = null(num_stu);
name = null(num_stu);
for i = 1:num_stu
   id{i} = RAW{i+1,1}; % ѧ��
   name{i} = RAW{i+1,2}; % ����
end
id = id'; name = name';


function [GPA,GPA_per_course] = compute_GPA(NUM,credit)
% Function:
% ��������ѧ����ƽ�����㣨��Ȩƽ����
% Input
% NUM: (m,n)��double�ͣ��������m��ѧ��������n�ſγ̳ɼ���ÿһ�ж�Ӧһ��ѧ���ĳɼ�
%     score_11 | score_12 | score13 | --- | score_1n |
%     score_21 | score_22 | score23 | --- | score_2n |
%     ******** | ******** | ******* | --- | ******** |
%     score_m1 | score_m2 | scorem3 | --- | score_mn |
% credit: (1,n)��double�ͣ�������пγ̵�ѧ��
% Output
% GPA: (m,1),double���ͣ��������ѧ����ƽ������
% GPA_per_course: (m,n),double���ͣ��������ѧ�����пγ̵ĵļ���

scores = NUM;
GPA_per_course = (scores-50)/10;
GPA_per_course(GPA_per_course<0) = 0;
GPA = GPA_per_course*credit'/sum(credit);

function sorted_result = Sort_result(RAW, GPA)
% Function:
% �Լ��㰴�������򲢱���
% Input
% RAW: �γ̳ɼ�����һ��Ϊ��ͷ��ǰ���зֱ�Ϊѧ�ź��������ɼ��ӵ����п�ʼ��
%    ѧ��|����|�γ�1/���޿�/ѧ��|�γ�2/���޿�/ѧ��|
%     ** | ** |         **     |         **     |
%     ** | ** |         **     |         **     |
%     ** | ** |         **     |         **     |
% GPA: (m,1),double���ͣ�����
% write_to_xls:0��1����ʾ�Ƿ񵼳�xls�ļ�
% Output
% sorted_result: cell���ͣ�������,[����,ѧ��,����,����]

[id, name] = get_id_name(RAW);
num_stu = length(name);
rank = 1:num_stu; rank = rank';
name_sorted = null(num_stu,1);
id_sorted = null(num_stu,1);

[GPA_sorted,Index] = sort(GPA,'descend');
for i  = 1:num_stu
    id_sorted{i,1} = id{Index(i)};
    name_sorted{i,1} = name{Index(i)};
end
title = {'����', 'ѧ��','����', '����'};
sorted_result = [title;
                 num2cell(rank),id_sorted,name_sorted,num2cell(GPA_sorted)];
