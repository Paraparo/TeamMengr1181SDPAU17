function varargout = Horserace(varargin)
% HORSERACE MATLAB code for Horserace.fig
%      HORSERACE, by itself, creates a new HORSERACE or raises the existing
%      singleton*.
%
%      H = HORSERACE returns the handle to a new HORSERACE or the handle to
%      the existing singleton*.
%
%      HORSERACE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HORSERACE.M with the given input arguments.
%
%      HORSERACE('Property','Value',...) creates a new HORSERACE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Horserace_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Horserace_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Horserace

% Last Modified by GUIDE v2.5 17-Nov-2017 15:58:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Horserace_OpeningFcn, ...
                   'gui_OutputFcn',  @Horserace_OutputFcn, ...
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


% --- Executes just before Horserace is made visible.
function Horserace_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Horserace (see VARARGIN)

% Choose default command line output for Horserace
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Horserace wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Horserace_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in start.
function start_Callback(hObject, eventdata, handles)
% hObject    handle to start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hrs1pos =0;
hrs2pos =0;
hrs3pos =0;
hrs4pos =0;

hrs1arr =[];
hrs2arr =[];
hrs3arr =[];
hrs4arr =[];

%hrs1arr(1) =hrs1pos;
%hrs2arr(1) =hrs2pos;
%hrs3arr(1) =hrs3pos;
%hrs4arr(1) =hrs4pos;

hrs1arr =[hrs1arr, hrs1pos];
hrs2arr =[hrs2arr, hrs2pos];
hrs3arr =[hrs3arr, hrs3pos];
hrs4arr =[hrs4arr, hrs4pos];


x = 1;
while ((hrs1pos<=100)&(hrs2pos<=100)&(hrs3pos<=100)&(hrs4pos<=100))
hrs1move = randi([0,10]);
hrs2move = randi([0,10]);
hrs3move = randi([0,10]);
hrs4move = randi([0,10]);

hrs1pos = hrs1pos + hrs1move;
hrs2pos = hrs2pos + hrs2move;
hrs3pos = hrs3pos + hrs3move;
hrs4pos = hrs4pos + hrs4move;

%hrs1arr(x) =hrs1pos;
%hrs2arr(x) =hrs2pos;
%hrs3arr(x) =hrs3pos;
%hrs4arr(x) =hrs4pos;

hrs1arr =[hrs1arr, hrs1pos];
hrs2arr =[hrs2arr, hrs2pos];
hrs3arr =[hrs3arr, hrs3pos];
hrs4arr =[hrs4arr, hrs4pos];

x=x+1;

end

hrs1arr;
hrs2arr;
hrs3arr;
hrs4arr;

i = linspace(1,x,x);
a = hrs1arr(i);
b = hrs2arr(i);
c = hrs3arr(i);
d = hrs4arr(i);
plot(handles.axes1,i,a,i,b,'--',i,c,':',i,d,'--o');
ylabel('Distance');
xlabel('Time');
grid on;
legend('Horse 1','Horse 2','Horse 3','Horse 4','Location','northwest');

hrss = '';

if ((hrs1pos>=100)&(hrs2pos<=100)&(hrs3pos<=100)&(hrs4pos<=100))
    msg1 = msgbox('Horse 1 wins!');
elseif ((hrs1pos<=100)&(hrs2pos>=100)&(hrs3pos<=100)&(hrs4pos<=100))
    msg2 = msgbox('Horse 2 wins!');    
elseif ((hrs1pos<=100)&(hrs2pos<=100)&(hrs3pos>=100)&(hrs4pos<=100))
    msg3 = msgbox('Horse 3 wins!');    
elseif ((hrs1pos<=100)&(hrs2pos<=100)&(hrs3pos<=100)&(hrs4pos>=100))
    msg4 = msgbox('Horse 4 wins!');
else
    if hrs1pos>=100
        hrss1 = '1 ';
    end
    if hrs2pos>=100
       hrss2 = '2 ';
    end
    if hrs3pos>=100
       hrss3 = '3 ';
    end
    if hrs4pos>=100
       hrss4 = '4 ';
    end
    
    msg5  = msgbox('Several Horses tied'); 
end


% --- Executes on button press in HelpMenu.
function HelpMenu_Callback(hObject, eventdata, handles)
% hObject    handle to HelpMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hlpmsg = msgbox({'Welcome to Horse Race!' 'In this game you guess if the result of of 4 racing horses' 'Pick the horse you think will win!' '' '' '----Control----' 'HELP::Launch help menu' 'Horse Line up::Toggle to guess result of the race' 'Play::Starts Race!' 'Quit::Closes Game'},'Help Menu');


% --- Executes on button press in quit.
function quit_Callback(hObject, eventdata, handles)
% hObject    handle to quit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
clc
