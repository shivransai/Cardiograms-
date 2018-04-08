clear all
close all
clc

load('AF_heart')
plot(AF_heart.bsp)
AF_bspm = AF_heart.bsp;
Vr = AF_bspm(:,59);
Vl = AF_bspm(:,70);
Vf = AF_bspm(:,348);

figure 
plot(Vr)
hold on
plot(Vl)
hold on
plot(Vf)
hold off

V1 = Vl - Vr;
V2 = Vf - Vr;
V3 = Vf - Vl;

figure 
plot(V1)
hold on
plot(V2)
hold on
plot(V3)
hold off



