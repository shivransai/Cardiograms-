clear all
close all
clc



load('Data_set.mat')
vertices = normal_heart.HVertices; 
faces = normal_heart.Hfaces;
v = VideoWriter('normal_hvideo.avi');
open(v);
for x = 1:10:3000

    color = normal_heart.Hpotential(x,:);
    color = color';
    
    patch('Faces',faces,'Vertices', vertices,'FaceVertexCData',color)
    shading interp;
    colormap jet;
    axis equal
    
   frame = getframe(gcf);
   writeVideo(v,frame);

end 
close(v)
    

    
    
    

