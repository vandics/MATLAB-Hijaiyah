function varargout = Graphic(varargin)
% GRAPHIC MATLAB code for Graphic.fig
%      GRAPHIC, by itself, creates a new GRAPHIC or raises the existing
%      singleton*.
%
%      H = GRAPHIC returns the handle to a new GRAPHIC or the handle to
%      the existing singleton*.
%
%      GRAPHIC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRAPHIC.M with the given input arguments.
%
%      GRAPHIC('Property','Value',...) creates a new GRAPHIC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Graphic_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Graphic_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Graphic

% Last Modified by GUIDE v2.5 29-Jul-2020 15:48:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Graphic_OpeningFcn, ...
                   'gui_OutputFcn',  @Graphic_OutputFcn, ...
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


% --- Executes just before Graphic is made visible.
function Graphic_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Graphic (see VARARGIN)

% Choose default command line output for Graphic
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Graphic wait for user response (see UIRESUME)
% uiwait(handles.figure1);
handles.output=hObject;
ah=axes('unit','normalized','position',[0 0 1 1]);
bg=imread('bg1.jpg');imagesc(bg);
set(ah,'handlevisibility','off','visible','off')
uistack(ah,'bottom');
guidata(hObject, handles);

axes(handles.axes1)
alexnet = load('properti_alexnet.mat');
alexnet = alexnet.properti;
vgg16 = load('properti_vgg16.mat');
vgg16 = vgg16.data2;
data = [alexnet vgg16];
data = data';
x = categorical({'Accuracy','Precision','Recall'});
x = reordercats(x,{'Accuracy','Precision','Recall'});
bar(x,data);
legend('Alexnet','vgg16')

% --- Outputs from this function are returned to the command line.
function varargout = Graphic_OutputFcn(hObject, eventdata, handles) 
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
respon2=awal;
handles.respon2=handles;
