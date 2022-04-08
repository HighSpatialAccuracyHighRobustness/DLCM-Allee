function [XAxis,UsaveMean,UsaveMeanX] = AlleeBatch()
% cells live in a square of Nvoxels-by-Nvoxels-by-Nvoxels
Nvoxels = 34;
% Cartesian (midpoint-)discretization
h = 2/Nvoxels;
X = -1+h/2:h:1-h/2;
[X,Y,Z] = ndgrid(X,X,X);
X = X(:);
Y = Y(:);
Z = Z(:);

NBatch = 100;
UsaveMean = cell(1,211);
for i = 1:NBatch
    i
    Usave = Allee();
    if i==1
        for j = 1:211
            UsaveMean{j} = Usave{j}/NBatch;
        end
    else
        for j = 1:211
            UsaveMean{j} = UsaveMean{j}+Usave{j}/NBatch;
        end
    end
end
XAxisIndex = find((Y>h/2-1e-4).*(Y<h/2+1e-4).*(Z>h/2-1e-4).*(Z<h/2+1e-4));
XAxis = X(XAxisIndex);
for i = 1:211
UsaveMeanX{i} = UsaveMean{i}(XAxisIndex);

end

end
