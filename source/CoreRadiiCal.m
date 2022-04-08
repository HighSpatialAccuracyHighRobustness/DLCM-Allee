UsaveMeanMeanCal;
UsaveMeanMeanXCal;
UsaveMeanMeanXMinus = UsaveMeanMeanX;
UsaveMeanMeanXPlus = UsaveMeanMeanX;
dNdx = UsaveMeanMeanX;
internalRadius = zeros(211,1);
externalRadius = zeros(211,1);

for i = 1:211
UsaveMeanMeanXMinus{i} = UsaveMeanMeanX{i};
UsaveMeanMeanXMinus{i}(1) = 0;
UsaveMeanMeanXMinus{i}(2:end) = UsaveMeanMeanX{i}(1:end-1);

UsaveMeanMeanXPlus{i} = UsaveMeanMeanX{i};
UsaveMeanMeanXPlus{i}(end) = 0;
UsaveMeanMeanXPlus{i}(1:end-1) = UsaveMeanMeanX{i}(2:end);

dNdx{i} = (UsaveMeanMeanXPlus{i}-UsaveMeanMeanXMinus{i})/(2*h);
internalRadius(i) = max(abs(XAxis(find(abs(dNdx{i})==max(abs(dNdx{i}))))));
greatLabel = find(abs(dNdx{i})>max(abs(dNdx{i}))/2);
externalRadius(i) = ( abs( XAxis(greatLabel(1)) )+abs( XAxis(greatLabel(end))) )/2;
end