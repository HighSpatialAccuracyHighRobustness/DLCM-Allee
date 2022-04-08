for k = 7:100
    [XAxis,UsaveMean,UsaveMeanX] = AlleeBatch();
    save(['UsaveMeanX',num2str(k),'.mat'],'UsaveMeanX');
    save(['UsaveMean',num2str(k),'.mat'],'UsaveMean');
end                     