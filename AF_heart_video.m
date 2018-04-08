clear all
close all
clc



load('Data_set.mat')
load('AF_heart')
vertices = normal_heart.HVertices; 
faces = normal_heart.Hfaces;
v = VideoWriter('af_hvideo.avi');
open(v);
for x = 1:10:3000

    color = AF_heart.Hpotential(x,:);
    color = color';
    
    patch('Faces',faces,'Vertices', vertices,'FaceVertexCData',color)
    shading interp;
    colormap jet;
    axis equal
    
   frame = getframe(gcf);
   writeVideo(v,frame);

end 
close(v)
    

    
    
    

