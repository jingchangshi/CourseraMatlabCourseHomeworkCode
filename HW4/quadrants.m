function [ MatQ ] = quadrants( PtsNMAX )
MatI = ones(PtsNMAX, PtsNMAX);
MatQ = cat(1, MatI, 3*MatI);
MatTemp = cat(1, 2*MatI, 4*MatI);
MatQ = cat(2, MatQ, MatTemp);
end

