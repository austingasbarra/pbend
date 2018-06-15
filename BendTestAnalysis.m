%% 3 Point Bed Data Sorter
%
% Author: Austin Gasbarra
% Date: 6/2/2018
%
% Purpose of this script is to sort through 3 point bend test data to find
% maxiumum load and head position at max load. The beginning location of
% the head at first compression is also taken and full displacement is
% calculated. 
%% Clear MATLAB
close all
clear 
clc

%% Ask and Load File
prompt = 'What is the file name? \n';
filename = input(prompt,'s');
extension = '.txt';
file = strcat(filename,extension);
data = load(file);

%% Solve for needed information
% Find Max Load and Max Displacement
[MaxLoc] = min(data);          
[r,c] = find(data<0,1);

Start = data(r,c+1);
End = MaxLoc(1,2);
Disp = Start - End;
