function  my_muban()
    for i=0:9
        [w1,w2,w3,g]=train(i);
        save([num2str(i),'.mat'])
        clear
    end
end