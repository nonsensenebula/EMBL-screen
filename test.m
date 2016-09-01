clc; clear all; close all;

picCitrit = imread('citricacid-20mM-1_B.JPG', 'JPEG');
picPyruvate = imread('methylpyruvate-20mM-1_A.JPG', 'JPEG');
picSuccinicacid = imread('Succinicacid-20mM-1_A.JPG', 'JPEG');

space = 342;
xstart = 352;
ystart = 501;

picToSave = uint8(zeros(space+1,3*(space+1),3));
filename = './figures/picture';

for i = 0:0
    v = mod(i,8);
    h = floor(i/8);
    picToSave(1:space+1,1+space*0:space*1+1,:) = picCitrit(xstart+space*v:xstart+space*(v+1),ystart+space*h:ystart+space*(h+1),:);
    picToSave(1:space+1,2+space*1:space*2+2,:) = picPyruvate(xstart+space*v:xstart+space*(v+1),ystart+space*h:ystart+space*(h+1),:);
    picToSave(1:space+1,3+space*2:space*3+3,:) = picSuccinicacid(xstart+space*v:xstart+space*(v+1),ystart+space*h:ystart+space*(h+1),:);
    filenameToSave = [filename, num2str(i),'.jpg'];
    imwrite(picToSave, filenameToSave, 'JPEG');
end
%imshow(picCitrit(xstart+space*v:xstart+space*(v+1),ystart+space*h:ystart+space*(h+1),:));
%imshow(picPyruvate(xstart+space*v:xstart+space*(v+1),ystart+space*h:ystart+space*(h+1),:));
%imshow(picSuccinicacid(xstart+space*v:xstart+space*(v+1),ystart+space*h:ystart+space*(h+1),:));
