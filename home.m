function varargout = home(varargin)
% HOME MATLAB code for home.fig
%      HOME, by itself, creates a new HOME or raises the existing
%      singleton*.
%
%      H = HOME returns the handle to a new HOME or the handle to
%      the existing singleton*.
%
%      HOME('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HOME.M with the given input arguments.
%
%      HOME('Property','Value',...) creates a new HOME or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before home_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to home_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help home

% Last Modified by GUIDE v2.5 15-Jul-2020 08:03:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @home_OpeningFcn, ...
                   'gui_OutputFcn',  @home_OutputFcn, ...
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


% --- Executes just before home is made visible.
function home_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to home (see VARARGIN)

% Choose default command line output for home
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes home wait for user response (see UIRESUME)
% uiwait(handles.figure1);
handles.output=hObject;
ah=axes('unit','normalized','position',[0 0 1 1]);
bg=imread('bg1.jpg');imagesc(bg);
set(ah,'handlevisibility','off','visible','off')
uistack(ah,'bottom');
guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = home_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
handles.output1=hObject;
ah1=axes('unit','normalized','position',[0.8 0.6 0.1 0.1]);
bg=imread('ta.png');imagesc(bg);
set(ah1,'handlevisibility','off','visible','off')
uistack(ah1,'bottom');
guidata(hObject, handles);

handles.output2=hObject;
ah2=axes('unit','normalized','position',[0.6 0.6 0.1 0.1]);
bg2=imread('tsa.png');imagesc(bg2);
set(ah2,'handlevisibility','off','visible','off')
uistack(ah2,'bottom');
guidata(hObject, handles);

handles.output3=hObject;
ah3=axes('unit','normalized','position',[0.4 0.6 0.1 0.1]);
bg3=imread('jim.png');imagesc(bg3);
set(ah3,'handlevisibility','off','visible','off')
uistack(ah3,'bottom');
guidata(hObject, handles);

handles.output4=hObject;
ah4=axes('unit','normalized','position',[0.2 0.6 0.1 0.1]);
bg4=imread('kha.png');imagesc(bg4);
set(ah4,'handlevisibility','off','visible','off')
uistack(ah4,'bottom');
guidata(hObject, handles);

handles.output5=hObject;
ah5=axes('unit','normalized','position',[0.8 0.4 0.1 0.1]);
bg5=imread('dal.png');imagesc(bg5);
set(ah5,'handlevisibility','off','visible','off')
uistack(ah5,'bottom');
guidata(hObject, handles);

handles.output6=hObject;
ah6=axes('unit','normalized','position',[0.6 0.4 0.1 0.1]);
bg6=imread('dzal.png');imagesc(bg6);
set(ah6,'handlevisibility','off','visible','off')
uistack(ah6,'bottom');
guidata(hObject, handles);

handles.output7=hObject;
ah7=axes('unit','normalized','position',[0.4 0.4 0.1 0.1]);
bg7=imread('ra.png');imagesc(bg7);
set(ah7,'handlevisibility','off','visible','off')
uistack(ah7,'bottom');
guidata(hObject, handles);

handles.output8=hObject;
ah8=axes('unit','normalized','position',[0.2 0.4 0.1 0.1]);
bg8=imread('zai.png');imagesc(bg8);
set(ah8,'handlevisibility','off','visible','off')
uistack(ah8,'bottom');
guidata(hObject, handles);

handles.output9=hObject;
ah9=axes('unit','normalized','position',[0.6 0.2 0.1 0.1]);
bg9=imread('sin.png');imagesc(bg9);
set(ah9,'handlevisibility','off','visible','off')
uistack(ah9,'bottom');
guidata(hObject, handles);

handles.output10=hObject;
ah10=axes('unit','normalized','position',[0.4 0.2 0.1 0.1]);
bg10=imread('syin.png');imagesc(bg10);
set(ah10,'handlevisibility','off','visible','off')
uistack(ah10,'bottom');
guidata(hObject, handles);


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
respon1=awal;
handles.respon1=handles;
