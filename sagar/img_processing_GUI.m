function varargout = img_processing_GUI(varargin)
% IMG_PROCESSING_GUI M-file for img_processing_GUI.fig
%      IMG_PROCESSING_GUI, by itself, creates a new IMG_PROCESSING_GUI or raises the existing
%      singleton*.
%
%      H = IMG_PROCESSING_GUI returns the handle to a new IMG_PROCESSING_GUI or the handle to
%      the existing singleton*.
%
%      IMG_PROCESSING_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IMG_PROCESSING_GUI.M with the given input arguments.
%
%      IMG_PROCESSING_GUI('Property','Value',...) creates a new IMG_PROCESSING_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before img_processing_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to img_processing_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help img_processing_GUI

% Last Modified by GUIDE v2.5 05-Jul-2020 16:24:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @img_processing_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @img_processing_GUI_OutputFcn, ...
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


% --- Executes just before img_processing_GUI is made visible.
function img_processing_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to img_processing_GUI (see VARARGIN)

% Choose default command line output for img_processing_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes img_processing_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = img_processing_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Sobel_pushbutton7.
function Sobel_pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to Sobel_pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
aedge=a;
aedge=rgb2gray(aedge);
aedge=edge(aedge,'Sobel')'
axes(handles.axes1);
imshow(aedge);


% --- Executes on button press in histogram_pushbutton8.
function histogram_pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to histogram_pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
ahist=a;
ahist=rgb2gray(ahist);
axes(handles.axes1);
imhist(ahist);



% --- Executes on button press in Canny_pushbutton9.
function Canny_pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to Canny_pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
aedge=a;
aedge=rgb2gray(aedge);
aedge=edge(aedge,'Canny')'
axes(handles.axes1);
imshow(aedge);



% --- Executes on button press in rotate_clockwise_pushbutton10.
function rotate_clockwise_pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to rotate_clockwise_pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
aclock=a;
aclock=imrotate(aclock,270);
axes(handles.axes1);
imshow(aclock);



% --- Executes on button press in rotate_anti_clockwise_pushbutton11.
function rotate_anti_clockwise_pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to rotate_anti_clockwise_pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
aclock=a;
aclock=imrotate(aclock,90);
axes(handles.axes1);
imshow(aclock);



% --- Executes on button press in rgb_gray_pushbutton2.
function rgb_gray_pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to rgb_gray_pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
agray=rgb2gray(a);
axes(handles.axes1);
imshow(agray);



% --- Executes on button press in convert_binary_pushbutton2.
function convert_binary_pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to convert_binary_pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
abw=im2bw(a);
axes(handles.axes1);
imshow(abw);


% --- Executes on button press in complement_imgpushbutton3.
function complement_imgpushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to complement_imgpushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
acomp=a;
acomp=imcomplement(acomp);
axes(handles.axes1);
imshow(acomp);



% --- Executes on button press in Upload_Img_pushbutton4.
function Upload_Img_pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to Upload_Img_pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=uigetfile('sagar.jpg')
a=imread(a);
axes(handles.axes1);
imshow(a);
setappdata(0,'a',a)


% --- Executes on button press in reset_img_pushbutton5.
function reset_img_pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to reset_img_pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
axes(handles.axes1);
imshow(a);



% --- Executes on button press in Gaussian_noise_imgpushbutton6.
function Gaussian_noise_imgpushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to Gaussian_noise_imgpushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
anoise=a;
anoise=imnoise(anoise,'gaussian',0.05);
axes(handles.axes1);
imshow(anoise);


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
anoise=a;
anoise=imnoise(anoise,'salt & pepper',0.05);
axes(handles.axes1);
imshow(anoise);


