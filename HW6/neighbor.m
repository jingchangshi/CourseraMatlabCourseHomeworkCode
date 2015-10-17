function [ VectorDiffOut ] = neighbor( VectorIn )
Flag = isvector(VectorIn);
if Flag == 0
    VectorDiffOut = [];
else
    PtsNMAX = length(VectorIn);
    VectorDiffOut = zeros(1, PtsNMAX-1);
    for Ind = 1 : PtsNMAX-1
        VectorDiffOut(Ind) = abs( VectorIn(Ind) - VectorIn(Ind+1) );
    end
end


end

