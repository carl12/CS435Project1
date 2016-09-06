%%CS-435 project 1 
%carl rodriguez




bodytemp = load('bodytemp.dat');

[row,col] = size(bodytemp);
x = 1:row;
fig1 = figure
fig1.Color = 'y';
fig1.Name = 'Body Temp';


scatter(x,bodytemp, 20, 'p');