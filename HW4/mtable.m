function [ MatMt, ScalarSum ] = mtable( N, M )
ScalarSum = 0;
MatMt = zeros(N, M);
for IndRow = 1 : N
    for IndCol = 1 : M
        MatMt(IndRow, IndCol) = IndRow * IndCol;
        ScalarSum = ScalarSum + MatMt(IndRow, IndCol);
    end
end

end

