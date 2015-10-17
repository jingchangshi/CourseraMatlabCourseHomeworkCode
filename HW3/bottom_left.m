function [ MatOut ] = bottom_left( MatWhole, OutSize )
MatOut = MatWhole(size(MatWhole, 1)-OutSize+1 : end, 1 : OutSize);

end

