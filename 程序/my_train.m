function d=my_train(num)
% num=0
    address= 'C:\Users\Mac\Desktop\����hog������ȡ��bp������ĳ�����ȡmatlab����\word_set(binary)\train\';
    photo=[address,num2str(num)];   %%%ͼƬ��ʽֻ��дһ��������bmp��jpg��gif�ȵ�
    photopath  = [photo,'\'];
    file = dir(photo);
   %%
    n=4;    %n*n pixels=1 block
    col=(4*9)*(60/n-1)*(20/n-1);
    myimgs=zeros(length(file)-3+1,col);
    for i = 3:length(file)
        t=i-2;
        I=imread([photopath, file(i).name]);
        c=my_normalize(I);
        hog_4x4=extractHOGFeatures(c,'CellSize',[n,n]);
        myimgs(t,1:col)=double(hog_4x4);
    end
    d=myimgs;
end