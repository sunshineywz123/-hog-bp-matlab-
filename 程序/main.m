clc,clear
%%
n=4;
I=imread('1_00001206.bmp');
% imshow(I)
c=my_normalize(I);
x=extractHOGFeatures(c,'CellSize',[n,n]);
x=double(x);
i=my_ocr(x);
% load 0
% out=my_bp(x,w1,w2,w3)