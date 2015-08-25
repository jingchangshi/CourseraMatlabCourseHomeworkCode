function [ VectorOut ] = int_col( PtsNMAX )
% int_col
% Take in positive integer PtsNMAX, return column vector
% consisting of elements not equal to its index.
VectorOut = zeros(PtsNMAX, 1);
for Ind = 1 : length(VectorOut)
    VectorOut(Ind) = Ind - 1;
end
VectorOut(1) = PtsNMAX;
end

