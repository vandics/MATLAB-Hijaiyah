function varargout = awal(varargin)
%AWAL MATLAB code file for awal.fig
%      AWAL, by itself, creates a new AWAL or raises the existing
%      singleton*.
%
%      H = AWAL returns the handle to a new AWAL or the handle to
%      the existing singleton*.
%
%      AWAL('Property','Value',...) creates a new AWAL using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to awal_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      AWAL('CALLBACK') and AWAL('CALLBACK',hObject,...) call the
%      local function named CALLBACK in AWAL.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help awal

% Last Modified by GUIDE v2.5 15-Jul-2020 00:47:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @awal_OpeningFcn, ...
                   'gui_OutputFcn',  @awal_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before awal is made visible.
function awal_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for awal
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes awal wait for user response (see UIRESUME)
% uiwait(handles.figure1);
handles.output=hObject;
ah=axes('unit','normalized','position',[0 0 1 1]);
bg=imread('bg1.jpg');imagesc(bg);
set(ah,'handlevisibility','off','visible','off')
uistack(ah,'bottom');
guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = awal_OutputFcn(hObject, eventdata, handles)
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
close
respon1=home;
handles.respon1=handles;

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
respon2=RECOGNITION;
handles.respon2=handles;

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
respon3=CLASSIFICATION;
handles.respon3=handles;

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
respon4=Graphic;
handles.respon4=handles;



% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
respon=keluar('Title','Konfirmasi Keluar');
switch lower(respon)
    case'No'
        %tidak ada aksi
    case'Yes'
        close
end

close

% --- Executes during object creation, after setting all properties.
function uipanel1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
handles.output=hObject;
ah2=axes('unit','normalized','position',[0 0 1 1]);
bg=imread('bg1.jpg');imagesc(bg);
set(ah2,'handlevisibility','off','visible','off')
uistack(ah2,'bottom');
guidata(hObject, handles);
