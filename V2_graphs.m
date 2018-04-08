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


Vrn = normal_bspm(:,59);
Vra = af_bspm(:,59);
Vrm = mi_bspm(:,59);


V2n = Vfn - Vrn;
V2a = Vfa - Vra;
V2m = Vfm - Vrm;

figure 
plot(V2n)
hold on
plot(V2a)
hold on
plot(V2m)
hold off
