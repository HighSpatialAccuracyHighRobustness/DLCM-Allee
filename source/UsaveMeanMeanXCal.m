UsaveMeanMeanX = cell(1,211);
for j  = 1:10
    load(['UsaveMeanX',num2str(j),'.mat']);
    if j==1
        for i = 1:211
            UsaveMeanMeanX{i} = UsaveMeanX{i}/10;
        end
    else
        for i = 1:211
            UsaveMeanMeanX{i} = UsaveMeanMeanX{i}+UsaveMeanX{i}/10;
        end
    end
end
