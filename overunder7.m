function varargout = overunder7(varargin)
% OVERUNDER7 MATLAB code for overunder7.fig
%      OVERUNDER7, by itself, creates a new OVERUNDER7 or raises the existing
%      singleton*.
%
%      H = OVERUNDER7 returns the handle to a new OVERUNDER7 or the handle to
%      the existing singleton*.
%
%      OVERUNDER7('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OVERUNDER7.M with the given input arguments.
%
%      OVERUNDER7('Property','Value',...) creates a new OVERUNDER7 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before overunder7_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to overunder7_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help overunder7

% Last Modified by GUIDE v2.5 17-Nov-2017 12:15:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @overunder7_OpeningFcn, ...
                   'gui_OutputFcn',  @overunder7_OutputFcn, ...
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


% --- Executes just before overunder7 is made visible.
function overunder7_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to overunder7 (see VARARGIN)

% Choose default command line output for overunder7
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes overunder7 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = overunder7_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Guess.
function Guess_Callback(hObject, eventdata, handles)
% hObject    handle to Guess (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Guess


% --- Executes on button press in helpmenu.
function helpmenu_Callback(hObject, eventdata, handles)
% hObject    handle to helpmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hlpmsg = msgbox({'Welcome to OverUnder7!' 'In this game you guess if the result of two dice throws add up to more or less then seven' 'If you think the result will  be more then seven, toggle the "over 7" button' 'If you think it will be less, leave it untapped' '' '' '----Control----' 'HELP::Launch help menu' 'o Over 7?::Toggle to guess result' 'Play::Starts game!' 'Quit::Closes Game'},'Help Menu');

% --- Executes on button press in quit.
function quit_Callback(hObject, eventdata, handles)
% hObject    handle to quit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
clc

% --- Executes on button press in startgame.
function startgame_Callback(hObject, eventdata, handles)
% hObject    handle to startgame (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=randi([1,6], 1); %random number generated between 1 and six to represent a dice roll
B=randi([1,6], 1); %random number generated between 1 and six to represent a dice roll
C=A+B; %A and B are being added together to represent two die being rolled
under=0;
over=1;
guess = get(handles.Guess, 'value')
if guess==under&C<7
    msg1 = msgbox(sprintf('Congrats you win! The number was %.0g', C));
    
elseif guess==over&C>7
    msg2 = msgbox(sprintf('Congrats you win! The number was %.0g', C));
    
elseif guess==under&C>7
    msg3 = msgbox(sprintf('Better luck next time. The number was %.0g', C));
    
elseif guess==over&C<7
    msg4 = msgbox(sprintf('Better luck next time. The number was %.0g', C));
    
elseif (guess==(under|over))&C==7
    msg5 = msgbox(sprintf('Better luck next time. The number was %.0g', C));
    
end
