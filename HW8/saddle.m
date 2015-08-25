function [ SaddleIndices ] = saddle( MatIn )

RowNMAX = size(MatIn, 1);
ColNMAX = size(MatIn, 2);
SaddleIndices = zeros(min(RowNMAX, ColNMAX), 2);
IndSaddle = 1;
for IndCol = 1 : ColNMAX
    for IndRow = 1 : RowNMAX
        SaddleFlag = MatIn(IndRow, IndCol) >= MatIn(IndRow, :);
        if sum(sum(SaddleFlag)) == length(MatIn(IndRow, :))
            SaddleFlag = MatIn(IndRow, IndCol) <= MatIn(:, IndCol);
            if sum(sum(SaddleFlag)) == length(MatIn(:, IndCol))
                SaddleIndices(IndSaddle, 1) = IndRow;
                SaddleIndices(IndSaddle, 2) = IndCol;
                IndSaddle = IndSaddle + 1;
            end
        end
    end
end

% eliminate zero elements.
SaddleIndices(find(SaddleIndices(:, 1) == 0), :) = [];

if nnz(SaddleIndices) == 0
    SaddleIndices = [];
end

end
