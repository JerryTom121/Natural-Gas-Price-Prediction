function varargout = NGPF_AnalysisARIMA_form(varargin)
% NGPF_ANALYSISARIMA_FORM MATLAB code for NGPF_AnalysisARIMA_form.fig
%      NGPF_ANALYSISARIMA_FORM, by itself, creates a new NGPF_ANALYSISARIMA_FORM or raises the existing
%      singleton*.
%
%      H = NGPF_ANALYSISARIMA_FORM returns the handle to a new NGPF_ANALYSISARIMA_FORM or the handle to
%      the existing singleton*.
%
%      NGPF_ANALYSISARIMA_FORM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NGPF_ANALYSISARIMA_FORM.M with the given input arguments.
%
%      NGPF_ANALYSISARIMA_FORM('Property','Value',...) creates a new NGPF_ANALYSISARIMA_FORM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before NGPF_AnalysisARIMA_form_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to NGPF_AnalysisARIMA_form_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help NGPF_AnalysisARIMA_form

% Last Modified by GUIDE v2.5 27-Apr-2016 22:10:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @NGPF_AnalysisARIMA_form_OpeningFcn, ...
                   'gui_OutputFcn',  @NGPF_AnalysisARIMA_form_OutputFcn, ...
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


% --- Executes just before NGPF_AnalysisARIMA_form is made visible.
function NGPF_AnalysisARIMA_form_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to NGPF_AnalysisARIMA_form (see VARARGIN)

% Choose default command line output for NGPF_AnalysisARIMA_form
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes NGPF_AnalysisARIMA_form wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = NGPF_AnalysisARIMA_form_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2


% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox3


% --- Executes on button press in checkbox4.
function checkbox4_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox4


% --- Executes on button press in checkbox5.
function checkbox5_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox5


% --- Executes on button press in checkbox6.
function checkbox6_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox6


% --- Executes on button press in checkbox7.
function checkbox7_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox7


% --- Executes on button press in checkbox8.
function checkbox8_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox8


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if get(handles.checkbox1, 'Value')
    assignin('base', 'StationaryTestFlag', 1);
else
    assignin('base', 'StationaryTestFlag', 0);
end

if get(handles.checkbox2, 'Value')
    assignin('base', 'LBQTestFlag', 1);
else
    assignin('base', 'LBQTestFlag', 0);
end

if get(handles.checkbox3, 'Value')
    assignin('base', 'ARCHTestFlag', 1);
else
    assignin('base', 'ARCHTestFlag', 0);
end

if get(handles.checkbox4, 'Value')
    assignin('base', 'DifferenceCheckFlag', 1);
else
    assignin('base', 'DifferenceCheckFlag', 0);
end

if get(handles.checkbox5, 'Value')
    assignin('base', 'AutoCorrelationFlag', 1);
else
    assignin('base', 'AutoCorrelationFlag', 0);
end

if get(handles.checkbox6, 'Value')
    assignin('base', 'BackTestFlag', 1);
else
    assignin('base', 'BackTestFlag', 0);
end

if get(handles.checkbox7, 'Value')
    assignin('base', 'DistributionCheckFlag', 1);
else
    assignin('base', 'DistributionCheckFlag', 0);
end

if get(handles.checkbox8, 'Value')
    assignin('base', 'PlotFlag', 1);
else
    assignin('base', 'PlotFlag', 0);
end

delete(handles.figure1);
