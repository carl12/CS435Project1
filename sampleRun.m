%%CS-435 project 1 
%carl rodriguez



%%Load Data
bodytemp = load('bodytemp.dat');
[row,col] = size(bodytemp);
x = 1:row;

%%Create Figure and display
fig1 = figure
fig1.Color = 'y';
fig1.Name = 'Body Temp';


myPlot = scatter(x,bodytemp, 10000, 'p');
title('Scatter plot for body temp','FontSize',20,'FontWeight','bold');
xlabel('Beotches','FontSize',16,'FontWeight','bold');
ylabel('Hotness','FontSize',16,'FontWeight','bold');

