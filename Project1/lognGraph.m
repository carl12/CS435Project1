%%Create pdf's
mu = 0;
x = -0:.001:3;
y1 = lognpdf(x,mu,(0.25));
y2 = lognpdf(x,mu,(0.5));
y3 = lognpdf(x,mu,(1));

%%Plot pdf's
h=figure(2);
plot(x,y1,'r',x,y2,'g',x,y3,'b');

%%Format tables
title('Probability density function');
legend('\mu = 0, \sigma^2 = 0.2');
set(gca,'FontSize',16,'FontWeight','bold');
set(gca,'XTickLabel',0:.5:3,'XTick',0:.5:3);

%%Add labels and text
xlabel('X','FontSize', 16, ... 
    'FontWeight','bold');
ylabel('$f_x(x;\mu,\phi) = \frac{1}{x\phi \sqrt{2\phi}}^{-\frac{(lnx-\mu)^2}{2\phi^2}}$','interpreter','latex','FontSize',16,... 
    'FontWeight','bold');

text1 = '\mu = 0, \phi = 0.25';
text2 = '\mu = 0, \phi = 0.5';
text3 = '\mu = 0, \phi = 1';

text(.8,1.7,text1,'FontSize',14,'FontWeight','bold','Color','r');
text(.75,.25,text2,'FontSize',14,'FontWeight','bold','Color','b');
text(0,1,text3,'FontSize',14,'FontWeight','bold','Color','g');

grid on;