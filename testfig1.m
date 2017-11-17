function varargout = testfig1(varargin)
% TESTFIG1 MATLAB code for testfig1.fig
%      TESTFIG1, by itself, creates a new TESTFIG1 or raises the existing
%      singleton*.
%
%      H = TESTFIG1 returns the handle to a new TESTFIG1 or the handle to
%      the existing singleton*.
%
%      TESTFIG1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TESTFIG1.M with the given input arguments.
%
%      TESTFIG1('Property','Value',...) creates a new TESTFIG1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before testfig1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to testfig1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help testfig1

% Last Modified by GUIDE v2.5 16-Nov-2017 20:22:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @testfig1_OpeningFcn, ...
                   'gui_OutputFcn',  @testfig1_OutputFcn, ...
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


% --- Executes just before testfig1 is made visible.
function testfig1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to testfig1 (see VARARGIN)

% Choose default command line output for testfig1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes testfig1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = testfig1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in startCheck.
function startCheck_Callback(hObject, eventdata, handles)
% hObject    handle to startCheck (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
loss = 6;
wordChoice = randi([1,10], 1)
user = 0;
str=fileread('words.txt')
C=strsplit(str)
word=C{wordChoice}
usedChars = '';
%new
set(handles.counter, 'String', user);

while user < loss
    userInput = input('\nEnter a character (lower case): ', 's');
    newStr = strrep(word, userInput, '');
    usedChars = userInput
    newStrLength = length(newStr);
    origStrLength = length(word);
    %new`

    if newStrLength < origStrLength
        word = newStr
        msg1 = msgbox('Correct!')
        userInput;
    elseif newStrLength == origStrLength
        user = user+1;
        msg2 = msgbox('Incorrect!')
    end
    
    if isempty(word) == 1
        break;
    end
    
end

if user == 6
    msg3 = msgbox('GAME OVER')
else
    msg4 = msgbox('YOU WIN')
end





% --- Executes on button press in HelpMenu.
function HelpMenu_Callback(hObject, eventdata, handles)
% hObject    handle to HelpMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hlp = msgbox({'Welcome to Hangman!' 'Here is a guide to the game' 'Help-opens the help menu' 'Quit-closes game' 'Play-launches game' '' 'Once you start, just type a letter in and hit enter to try and guess what the word is'},'HELP');



% --- Executes on button press in Killprgm.
function Killprgm_Callback(hObject, eventdata, handles)
% hObject    handle to Killprgm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
clc


function userinput_Callback(hObject, eventdata, handles)
% hObject    handle to userinput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of userinput as text
%        str2double(get(hObject,'String')) returns contents of userinput as a double


% --- Executes during object creation, after setting all properties.
function userinput_CreateFcn(hObject, eventdata, handles)
% hObject    handle to userinput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function letterG_CreateFcn(hObject, eventdata, handles)
% hObject    handle to letterG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
