function [ MatOut ] = odd_index( MatIn )
% odd_index
% takes a matrix, M, as input argument and returns a matrix that
% contains only those elements of M that are in odd rows and columns.
MatOut = zeros(length(1:2:size(MatIn,1)), length(1:2:size(MatIn,2)));
for IndRow = 1 : 2 : size(MatIn, 1)
    for IndCol = 1 : 2 : size(MatIn, 2)
        MatOut( (IndRow+1)/2, (IndCol+1)/2 ) = MatIn(IndRow, IndCol);
    end
end

end

