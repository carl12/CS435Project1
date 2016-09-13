%%Calculate mean/var/sd of second and third colums
function [mymean1,myvar1,mysd1,mymean2,myvar2,mysd2] = calcData( input)


input1 = input(:,2);
mymean1 = mean(input1);
myvar1 = var(input1);
mysd1 = std(input1);
    
input2 = input(:,3);
mymean2 = mean(input2);
myvar2 = var(input2);
mysd2 = std(input2);
end