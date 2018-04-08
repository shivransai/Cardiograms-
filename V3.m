clear all
close all
clc

load('MI_heart')
load('Data_set')
load('AF_heart')

normal_bspm = normal_heart.bsp;
af_bspm = AF_heart.bsp;
mi_bspm = MI_heart.bsp;


Vfn = normal_bspm(:,348);
Vfa = af_bspm(:,348);
Vfm = mi_bspm(:,348);


Vln = normal_bspm(:,70);
Vla = af_bspm(:,70);
Vlm = mi_bspm(:,70);


V3n = Vfn - Vln;
V3a = Vfa - Vla;
V3m = Vfm - Vlm;

figure 
plot(V3n)
hold on
plot(V3a)
hold on
plot(V3m)
hold off
