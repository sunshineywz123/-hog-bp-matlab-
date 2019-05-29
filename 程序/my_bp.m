function out_net=my_bp(x,w1,w2,w3)
    [~,x_col]=size(x);
    hiddnum1=30;
    hiddnum2=30;
    out_hidd1=logsig(x*w1/x_col);
    out_hidd2=logsig(out_hidd1*w2/hiddnum1);
    out_net=logsig(out_hidd2*w3/hiddnum2);
end
    