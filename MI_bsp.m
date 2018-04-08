clear all
close all
clc

load('MI_heart')
plot(MI_heart.bsp)
MI_bspm = MI_heart.bsp;
Vr = MI_bspm(:,59);
Vl = MI_bspm(:,70);
Vf = MI_bspm(:,348);

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



