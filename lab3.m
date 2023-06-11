function varargout = lab3(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @lab3_OpeningFcn, ...
                   'gui_OutputFcn',  @lab3_OutputFcn, ...
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

function lab3_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

global Img
Img = imread('ex3.png'); % загружаем изображение из рабочей папки
function x = getImg
global Img
x = Img;

function varargout = lab3_OutputFcn(hObject, eventdata, handles)
img = getImg;
imshow(img);
varargout{1} = handles.output;

function cont_Callback(hObject, eventdata, handles)
img = getImg;
% найти минимальное и максимальное значение интенсивности
min_val = min(img(:));
max_val = max(img(:));
% растянуть диапазон интенсивности
img_adjusted = (img-min_val)*(255/(max_val-min_val));
imshow(img_adjusted); % отображение результирующего изображения
