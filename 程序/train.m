function [w1,w2,w3,g]=train(num)
% clear
% clc
% num=0;
    I=my_train(num);
    x=I;
    y=0.01*num+0.001;
    N=1000;
    %
    [x_row,x_col]=size(x);
    %
    hiddnum1=30;
    hiddnum2=30;
    w1=rand(x_col,hiddnum1);
    w2=rand(hiddnum1,hiddnum2);
    w3=rand(hiddnum2,1);
    learn_rate=0.01;
    for i=1:N
        hidd1=logsig(x*w1/x_col);
        hidd2=logsig(hidd1*w2/hiddnum1);
        net=logsig(hidd2*w3/hiddnum2);
        err=y-net;
        delta3 = err.*( net.* ( 1 - net ));
        delta2 = (delta3*(w3)').*(hidd2.* ( 1 - hidd2));
        delta1 = (delta2* (w2)').* (hidd1.* (1 - hidd1));
        w3=w3+learn_rate*(hidd2)'*delta3;
        w2=w2+learn_rate*(hidd1)'*delta2;
        w1=w1+learn_rate*(x)'*delta1;
        g=sum(sum(err.^2))./x_row;
    end
end