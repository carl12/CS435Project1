%%Read and split data
hotdog = load('hotdog.dat');
BEEF = 1;
MEAT = 2;
POULTRY = 3;
names = {'beef','meat','poultry'};

type = hotdog(:,1);

beefDat = hotdog(hotdog(:,1)==BEEF,:);
meatDat = hotdog(hotdog(:,1)==MEAT,:);
poulDat = hotdog(hotdog(:,1)==POULTRY,:);

%%Calculate statistical values
[meanBeefCal, varBeefCal, sdBeefCal,...
    meanBeefSod, varBeefSod, sdBeefSod] = calcData(beefDat);
[meanmeatCal, varmeatCal, sdmeatCal,...
    meanmeatSod, varmeatSod, sdmeatSod] = calcData(meatDat);
[meanpoulCal, varpoulCal, sdpoulCal,...
    meanpoulSod, varpoulSod, sdpoulSod] = calcData(poulDat);

%%Find extreme values
[maxCal,maxCalLoc]=max([meanBeefCal,meanmeatCal,meanpoulCal]);
[minCal,minCalLoc]=min([meanBeefCal,meanmeatCal,meanpoulCal]);
[maxSod,maxSodLoc]=max([meanBeefSod,meanmeatSod,meanpoulSod]);
[minSod,minSodLoc]=min([meanBeefSod,meanmeatSod,meanpoulSod]);

%%Enter values into files
fid=fopen('Project1_result.txt','w');
fprintf(fid,'%s has the most calories with %.f \n',names{maxCalLoc},maxCal);
fprintf(fid,'%s has the fewest calories with %.f \n',names{minCalLoc},minCal);
fprintf(fid,'%s has the most sodium with %.f \n',names{maxSodLoc},maxSod);
fprintf(fid,'%s has the least sodium with %.f \n',names{minSodLoc},minSod);

%%Display data
fig1 = figure;
histogram(meatDat(:,2)); 
title('Meat Calories');

fig2 = figure;
scatter(1:length(beefDat),beefDat(:,3));
title('Beef Sodium');


