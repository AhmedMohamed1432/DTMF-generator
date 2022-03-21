function varargout = DTMFgenerator(varargin)
% DTMFGENERATOR MATLAB code for DTMFgenerator.fig
%      DTMFGENERATOR, by itself, creates a new DTMFGENERATOR or raises the existing
%      singleton*.
%
%      H = DTMFGENERATOR returns the handle to a new DTMFGENERATOR or the handle to
%      the existing singleton*.
%
%      DTMFGENERATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DTMFGENERATOR.M with the given input arguments.
%
%      DTMFGENERATOR('Property','Value',...) creates a new DTMFGENERATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DTMFgenerator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DTMFgenerator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DTMFgenerator

% Last Modified by GUIDE v2.5 13-Jan-2021 21:36:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DTMFgenerator_OpeningFcn, ...
                   'gui_OutputFcn',  @DTMFgenerator_OutputFcn, ...
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
    



% --- Executes just before DTMFgenerator is made visible.
function DTMFgenerator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DTMFgenerator (see VARARGIN)

% Choose default command line output for DTMFgenerator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DTMFgenerator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = DTMFgenerator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)   
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    fs =8000;
    t=0:1:4000;
    t1=0:1:4000;
    flow =sin(2*pi*(697/(fs)).*t);
    fhigh = sin(2*pi*(1209/(fs)).*t);
    y= flow+ fhigh;
    flow1 =sin(2*pi*(697/fs).*t1);
    fhigh1 = sin(2*pi*(1209/fs).*t1);
    y1= flow1+ fhigh1;
    y=y/2;
    y1=y1/2;
    sound(y,fs);
    axes(handles.axes1)
    
    plot(y);
    grid on
 
    


% --- Executes on button press in pushbutton6.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    fs =8000;
    t=0:1:4000;
    t1=0:1:50;
    flow =sin(2*pi*(697/(fs)).*t);
    fhigh = sin(2*pi*(1336/(fs)).*t);
    y= flow+ fhigh;
    flow1 =sin(2*pi*(697/(fs)).*t1);
    fhigh1 = sin(2*pi*(1336/(fs)).*t1);
    y1= flow1+ fhigh1;
    y=y/2;
    y1=y1/2;
    sound(y)
    axes(handles.axes1)
    
    plot(y)
    grid on



% --- Executes on button press in pushbutton6.
function pushbuttonA_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    fs =8000;
    t=0:1:4000;
    t1=0:1:50;
    flow =sin(2*pi*(697/(fs)).*t);
    fhigh = sin(2*pi*(1633/(fs)).*t);
    y= flow+ fhigh;
    flow1 =sin(2*pi*(697/(fs)).*t1);
    fhigh1 = sin(2*pi*(1633/(fs)).*t1);
    y1= flow1+ fhigh1;
    y=y/2;
    y1=y1/2;
    sound(y)
    axes(handles.axes1)
    
    plot(y)
    grid on


% --- Executes on button press in pushbuttonB.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    fs =8000;
    t=0:1:4000;
    t1=0:1:50;
    flow =sin(2*pi*(770/(fs)).*t);
    fhigh = sin(2*pi*(1336/(fs)).*t);
    y= flow+ fhigh;
    flow1 =sin(2*pi*(770/(fs)).*t1);
    fhigh1 = sin(2*pi*(1336/(fs)).*t1);
    y1= flow1+ fhigh1;
    y=y/2;
    y1=y1/2;
    sound(y)
    axes(handles.axes1)
    
    plot(y)
    grid on


% --- Executes on button press in pushbuttonC.
function pushbuttonC_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    fs =8000;
    t=0:1:4000;
    t1=0:1:50;
    flow =sin(2*pi*(852/(fs)).*t);
    fhigh = sin(2*pi*(1633/(fs)).*t);
    y= flow+ fhigh;
    flow1 =sin(2*pi*(852/(fs)).*t1);
    fhigh1 = sin(2*pi*(1663/(fs)).*t1);
    y1= flow1+ fhigh1;
    y=y/2;
    y1=y1/2;
    sound(y)
    axes(handles.axes1)
    
    plot(y)
    grid on



% --- Executes on button press in pushbutton5.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    fs =8000;
    t=0:1:4000;
    t1=0:1:50;
    flow =sin(2*pi*(852/(fs)).*t);
    fhigh = sin(2*pi*(1209/(fs)).*t);
    y= flow+ fhigh;
    flow1 =sin(2*pi*(852/(fs)).*t1);
    fhigh1 = sin(2*pi*(1209/(fs)).*t1);
    y1= flow1+ fhigh1;
    y=y/2;
    y1=y1/2;
    sound(y)
    axes(handles.axes1)
    
    plot(y)
    grid on



% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    fs =8000;
    t=0:1:4000;
    t1=0:1:50;
    flow =sin(2*pi*(770/(fs)).*t);
    fhigh = sin(2*pi*(1477/(fs)).*t);
    y= flow+ fhigh;
    flow1 =sin(2*pi*(770/(fs)).*t1);
    fhigh1 = sin(2*pi*(1477/(fs)).*t1);
    y1= flow1+ fhigh1;
    y=y/2;
    y1=y1/2;
    sound(y)
    axes(handles.axes1)
    
    plot(y)
    grid on



% --- Executes on button press in pushbuttonB.
function pushbuttonB_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    fs =8000;
    t=0:1:4000;
    t1=0:1:50;
    flow =sin(2*pi*(770/(fs)).*t);
    fhigh = sin(2*pi*(1633/(fs)).*t);
    y= flow+ fhigh;
    flow1 =sin(2*pi*(770/(fs)).*t1);
    fhigh1 = sin(2*pi*(1633/(fs)).*t1);
    y1= flow1+ fhigh1;
    y=y/2;
    y1=y1/2;
    sound(y)
    axes(handles.axes1)
    
    plot(y)
    grid on



% --- Executes on button press in pushbutton2.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fs =8000;
    t=0:1:4000;
    t1=0:1:50;
    flow =sin(2*pi*(852/(fs)).*t);
    fhigh = sin(2*pi*(1477/(fs)).*t);
    y= flow+ fhigh;
    flow1 =sin(2*pi*(852/(fs)).*t1);
    fhigh1 = sin(2*pi*(1477/(fs)).*t1);
    y1= flow1+ fhigh1;
    y=y/2;
    y1=y1/2;
    sound(y)
    axes(handles.axes1)
    
    plot(y)
    grid on


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fs =8000;
    t=0:1:4000;
    t1=0:1:50;
    flow =sin(2*pi*(697/(fs)).*t);
    fhigh = sin(2*pi*(1477/(fs)).*t);
    y= flow+ fhigh;
    flow1 =sin(2*pi*(697/(fs)).*t1);
    fhigh1 = sin(2*pi*(1477/(fs)).*t1);
    y1= flow1+ fhigh1;
    y=y/2;
    y1=y1/2;
    sound(y)
    axes(handles.axes1)
    
    plot(y)
    grid on


% --- Executes on button press in pushbuttonA.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fs =8000;
    t=0:1:4000;
    t1=0:1:50;
    flow =sin(2*pi*(852/(fs)).*t);
    fhigh = sin(2*pi*(1336/(fs)).*t);
    y= flow+ fhigh;
    flow1 =sin(2*pi*(852/(fs)).*t1);
    fhigh1 = sin(2*pi*(1336/(fs)).*t1);
    y1= flow1+ fhigh1;
    y=y/2;
    y1=y1/2;
    sound(y)
    axes(handles.axes1)
   
    plot(y)
    grid on


% --- Executes on button press in pushbuttonstar.
function pushbuttonstar_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonstar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fs =8000;
    t=0:1:4000;
    t1=0:1:50;
    flow =sin(2*pi*(941/(fs)).*t);
    fhigh = sin(2*pi*(1209/(fs)).*t);
    y= flow+ fhigh;
    flow1 =sin(2*pi*(941/(fs)).*t1);
    fhigh1 = sin(2*pi*(1209/(fs)).*t1);
    y1= flow1+ fhigh1;
    y=y/2;
    y1=y1/2;
    sound(y)
    axes(handles.axes1)
    
    plot(y)
    grid on


% --- Executes on button press in pushbutton0.
function pushbutton0_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fs =8000;
    t=0:1:4000;
    t1=0:1:50;
    flow =sin(2*pi*(941/(fs)).*t);
    fhigh = sin(2*pi*(1336/(fs)).*t);
    y= flow+ fhigh;
    flow1 =sin(2*pi*(941/(fs)).*t1);
    fhigh1 = sin(2*pi*(1336/(fs)).*t1);
    y1= flow1+ fhigh1;
    y=y/2;
    y1=y1/2;
    sound(y)
    axes(handles.axes1)
    
    plot(y)
    grid on



% --- Executes on button press in pushbuttonHash.
function pushbuttonHash_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonHash (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fs =8000;
    t=0:1:4000;
    t1=0:1:50;
    flow =sin(2*pi*(941/(fs)).*t);
    fhigh = sin(2*pi*(1477/(fs)).*t);
    y= flow+ fhigh;
    flow1 =sin(2*pi*(941/(fs)).*t1);
    fhigh1 = sin(2*pi*(1477/(fs)).*t1);
    y1= flow1+ fhigh1;
    y=y/2;
    y1=y1/2;
    sound(y)
    axes(handles.axes1)
    
    plot(y)
    grid on



% --- Executes on button press in pushbuttonD.
function pushbuttonD_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fs =8000;
    t=0:1:4000;
    t1=0:1:50;
    flow =sin(2*pi*(941/(fs)).*t);
    fhigh = sin(2*pi*(1633/(fs)).*t);
    y= flow+ fhigh;
    flow1 =sin(2*pi*(941/(fs)).*t1);
    fhigh1 = sin(2*pi*(1633/(fs)).*t1);
    y1= flow1+ fhigh1;
    y=y/2;
    y1=y1/2;
    sound(y)
    axes(handles.axes1)
    plot(y)
    grid on



% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);
cla(handles.axes1, 'reset');
axes(handles.axes3);
cla(handles.axes3, 'reset');
set(handles.edit1,'string',' ');
clc;
clear;


% --- Executes on button press in pushbutton6.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    fs =8000;
    t=0:1:4000;
    t1=0:1:50;
    flow =sin(2*pi*(770/(fs)).*t);
    fhigh = sin(2*pi*(1209/(fs)).*t);
    y= flow+ fhigh;
    flow1 =sin(2*pi*(770/(fs)).*t1);
    fhigh1 = sin(2*pi*(1209/(fs)).*t1);
    y1= flow1+ fhigh1;
    y=y/2;
    y1=y1/2;
    sound(y)
    axes(handles.axes1)
    
    plot(y)
    grid on


% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    [filename pathname]= uigetfile({'.wav'}, 'File Selector');
    global y
    global fs
    [y,fs]=audioread(filename);

    


% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    global y
    global fs
    sound(y,fs);
    axes(handles.axes3)
    
    plot(y)
    %grid on


% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    fs =8000;
    t=0:1:4000;
    global y;
    y=rot90(y);
    %y=y*2;
    y0=(sin(2*pi*(941/(fs)).*t)+sin(2*pi*(1336/(fs)).*t))/2;
    y1=(sin(2*pi*(697/(fs)).*t)+sin(2*pi*(1209/(fs)).*t))/2;
    y2=(sin(2*pi*(697/(fs)).*t)+sin(2*pi*(1336/(fs)).*t))/2;
    y3=(sin(2*pi*(697/(fs)).*t)+sin(2*pi*(1477/(fs)).*t))/2;
    y4=(sin(2*pi*(770/(fs)).*t)+sin(2*pi*(1209/(fs)).*t))/2;
    y5=(sin(2*pi*(770/(fs)).*t)+sin(2*pi*(1336/(fs)).*t))/2;
    y6=(sin(2*pi*(770/(fs)).*t)+sin(2*pi*(1477/(fs)).*t))/2;
    y7=(sin(2*pi*(852/(fs)).*t)+sin(2*pi*(1209/(fs)).*t))/2;
    y8=(sin(2*pi*(852/(fs)).*t)+sin(2*pi*(1336/(fs)).*t))/2;
    y9=(sin(2*pi*(852/(fs)).*t)+sin(2*pi*(1477/(fs)).*t))/2;
    y_A=(sin(2*pi*(697/(fs)).*t)+sin(2*pi*(1633/(fs)).*t))/2;
    y_B=(sin(2*pi*(770/(fs)).*t)+sin(2*pi*(1633/(fs)).*t))/2;
    y_C=(sin(2*pi*(852/(fs)).*t)+sin(2*pi*(1633/(fs)).*t))/2;
    y_D=(sin(2*pi*(941/(fs)).*t)+sin(2*pi*(1633/(fs)).*t))/2;
    y_star=(sin(2*pi*(941/(fs)).*t)+sin(2*pi*(1209/(fs)).*t))/2;
    y_hash=(sin(2*pi*(941/(fs)).*t)+sin(2*pi*(1477/(fs)).*t))/2;
    assignin('base','y0',y0)
    assignin('base','y1',y1)
    assignin('base','y2',y2)
    assignin('base','y3',y3)
    assignin('base','y4',y4)
    assignin('base','y5',y5)
    assignin('base','y6',y6)
    assignin('base','y7',y7)
    assignin('base','y8',y8)
    assignin('base','y9',y9)
    assignin('base','y_A',y_A)
    assignin('base','y_B',y_B)
    assignin('base','y_C',y_C)
    assignin('base','y_D',y_D)
    assignin('base','y_star',y_star)
    assignin('base','y_hash',y_hash)
    assignin('base','y',y)
    %filename='xx.wav';
    %audiowrite(filename,y1,fs);
    check=1;
    for i=1:1:4000
        if(abs(y(i)-y1(i))>0.001)
            check=0;
        end
    end
    if(check==1)
        set(handles.edit1,'string','1');
    end
    check=1;
    for i=1:1:4000
        if(abs(y(i)-y0(i))>0.001)
            check=0;
        end
    end
    if(check==1)
        set(handles.edit1,'string',num2str(0));
    end
    check=1;
    for i=1:1:4000
        if(abs(y(i)-y2(i))>0.001)
            check=0;
        end
    end
    if(check==1)
        set(handles.edit1,'string',num2str(2));
    end
    check=1;
    for i=1:1:4000
        if(abs(y(i)-y3(i))>0.001)
            check=0;
        end
    end
    if(check==1)
        set(handles.edit1,'string',num2str(3));
    end
    check=1;
    for i=1:1:4000
        if(abs(y(i)-y4(i))>0.001)
            check=0;
        end
    end
    if(check==1)
        set(handles.edit1,'string',num2str(4));
    end
    check=1;
    for i=1:1:4000
        if(abs(y(i)-y5(i))>0.001)
            check=0;
        end
    end
    if(check==1)
        set(handles.edit1,'string',num2str(5));
    end
    check=1;
    for i=1:1:4000
        if(abs(y(i)-y6(i))>0.001)
            check=0;
        end
    end
    if(check==1)
        set(handles.edit1,'string',num2str(6));
    end
    check=1;
    for i=1:1:4000
        if(abs(y(i)-y7(i))>0.001)
            check=0;
        end
    end
    if(check==1)
        set(handles.edit1,'string',num2str(7));
    end
    check=1;
    for i=1:1:4000
        if(abs(y(i)-y8(i))>0.001)
            check=0;
        end
    end
    if(check==1)
        set(handles.edit1,'string',num2str(8));
    end
    check=1;
    for i=1:1:4000
        if(abs(y(i)-y9(i))>0.001)
            check=0;
        end
    end
    if(check==1)
        set(handles.edit1,'string',num2str(9));
    end
    check=1;
    for i=1:1:4000
        if(abs(y(i)-y_A(i))>0.001)
            check=0;
        end
    end
    if(check==1)
        set(handles.edit1,'string','A');
    end
    check=1;
    for i=1:1:4000
        if(abs(y(i)-y_B(i))>0.001)
            check=0;
        end
    end
    if(check==1)
        set(handles.edit1,'string','B');
    end
    check=1;
    for i=1:1:4000
        if(abs(y(i)-y_C(i))>0.001)
            check=0;
        end
    end
    if(check==1)
        set(handles.edit1,'string','C');
    end
    check=1;
    for i=1:1:4000
        if(abs(y(i)-y_D(i))>0.001)
            check=0;
        end
    end
    if(check==1)
        set(handles.edit1,'string','D');
    end
    check=1;
    for i=1:1:4000
        if(abs(y(i)-y_star(i))>0.001)
            check=0;
        end
    end
    if(check==1)
        set(handles.edit1,'string','*');
    end
    check=1;
    for i=1:1:4000
        if(abs(y(i)-y_hash(i))>0.001)
            check=0;
        end
    end
    if(check==1)
        set(handles.edit1,'string','#');
    end
    
    
  



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
