function z=test()
    [w1,w2,w3]=my_bp();
    x=my_test();
    out_hidd1=logsig(x*w1);
    out_hidd2=logsig(out_hidd1*w2);
    out_net=logsig(out_hidd2*w3);
    z=out_net;
end