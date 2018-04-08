clear all
close all
clc

load('MI_heart')
load('Data_set')
load('AF_heart')

normal_bspm = normal_heart.bsp;
af_bspm = AF_heart.bsp;
mi_bspm = MI_heart.bsp;


Vrn = normal_bspm(:,59);
Vra = af_bspm(:,59);
Vrm = mi_bspm(:,59);


Vln = normal_bspm(:,70);
Vla = af_bspm(:,70);
Vlm = mi_bspm(:,70);


V1n = Vln - Vrn;
V1a = Vla - Vra;
V1m = Vlm - Vrm;

figure 
plot(V1n)
hold on
plot(V1a)
hold on
plot(V1m)
hold off
