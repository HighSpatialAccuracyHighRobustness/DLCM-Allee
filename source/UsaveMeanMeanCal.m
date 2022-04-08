UsaveMeanMean = cell(1,211);
for j  = 1:10
    load(['UsaveMean',num2str(j),'.mat']);
    if j==1
        for i = 1:211
            UsaveMeanMean{i} = UsaveMean{i}/10;
        end
    else
        for i = 1:211
            UsaveMeanMean{i} = UsaveMeanMean{i}+UsaveMean{i}/10;
        end
    end
end
% NTotal_A_3_Tau_8_5 = zeros(211,1);
% for i=1:211
% NTotal_A_3_Tau_8_5(i) = sum(UsaveMeanMean{i});
% end