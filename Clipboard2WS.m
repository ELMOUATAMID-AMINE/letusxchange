%% Clipboard2WS is a script to import tabular data from the clipboard (e.g data from an excel sheet )
% 
%  For more information, see <a href="matlab:web('http://www.mathworks.com')">the MathWorks Web site</a>.
%  see also TEXTSCAN
%
%  Copyright 2018 MathWorks
%
   %****************************
   %Author: Amine EL MOUATAMID
   %Creation date: 01/06/2019
   %Laste update:
   %Version: 1.0
   %****************************
   
%Import data from clipboard.
%%Create a variable to save data from clipboard on.
txt = clipboard('paste');
delimiter = '\t';
% Format for each line of text:
formatSpec = '%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%[^\n\r]';
% formatSpec depends on the number of the culumns in excel sheet 
% in my case I have a file with 16 culumns so I use 16 "%s"
% you have to write %s as much as the culumns in your sheet
% Read columns of data according to the format.
dataArray = textscan(txt, formatSpec, 'Delimiter', delimiter, 'TextType', 'string',  'ReturnOnError', false);
% Create output variable
DATA = [dataArray{1:end-1}];
