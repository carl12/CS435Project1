%%CS-435 project 1 
%carl rodriguez



%%Load Data
bodytemp = load('bodytemp.dat');
[row,col] = size(bodytemp);
x = 1:row;

%%Create Figure and display
fig1 = figure;
fig1.Color = 'y';
fig1.Name = 'Body Temp';


myPlot = scatter(x,bodytemp, 100000, 'p');
title('Scatter plot for body temp','FontSize',20,'FontWeight','bold');
xlabel('People','FontSize',16,'FontWeight','bold');
ylabel('Temperature (F)','FontSize',16,'FontWeight','bold');

%%Calculate total mean and variance
total_mean = mean(bodytemp);
total_var = var(bodytemp);

males = bodytemp(1:65);
females = bodytemp(66:end);

male_mean = mean(males);
female_mean = mean(females);

male_var = var(males);
female_var = var(females);

