clear all
close all
clc

load('AF_heart')
n = AF_heart.bsp;
a = n(:,198);
c = n(:,194);
i = (n(:,165) +n(:,207))/2;
e = n(:,190);
h = n(:,17);
m = (n(:,182) + n(:,202) + n(:,203) + n(:,223))/4;
f = ((3*n(:,343))+(2*n(:,344)))/5;

x = (.610 * a) + (.171 *c) - (.781*i);
y = (.655 * f) + (.171 *m) - (h);
z = (.133 * a) + (.736 *c) - (.374* i) - (.231 *c);



figure 
plot3(x,y,z)



