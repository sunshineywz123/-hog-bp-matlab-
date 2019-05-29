% function i=my_ocr(x)
%     my_muban();  %ÑµÁ·ºÃºó¿ÉÆÁ±Î
%%
n=4;
I=imread('1_00001206.bmp');
c=my_normalize(I);
x=extractHOGFeatures(c,'CellSize',[n,n]);
x=double(x);
%%
    i=-1;
    out_net=100;
    while (abs(out_net-0.01*i-0.001)>0.004)&&(i<=8)
        i=i+1;
        load([num2str(i),'.mat'])
        out_net=my_bp(x,w1,w2,w3);
    end
    if i==9&&(abs(out_net-0.01*9)>0.00001)
        i=11111;
    end
% end