clear all
close all
clc

load('Data_set')
plot(normal_heart.bsp)
normal_bspm = normal_heart.bsp;
Vr = normal_bspm(:,59);
Vl = normal_bspm(:,70);
Vf = normal_bspm(:,348);

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



