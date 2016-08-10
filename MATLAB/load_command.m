% Load Command
clc; format compact;

% remove all variables from system memory
clear all;

myfile = fopen('myfile.txt','w');

x = 1:2:25;
y = sqrt(x);
z = [x;y];

fprintf(myfile, '%5i %10.6f \n', z);
fclose('all');

zz = load('myfile.txt');

disp(zz);