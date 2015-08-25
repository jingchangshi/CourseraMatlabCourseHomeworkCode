function [ IndexOut ] = large_elements( MatIn )
Ind = 0;
IndexOut = [];
for IndRow = 1 : size(MatIn, 1)
    for IndCol = 1 : size(MatIn, 2)
        if (IndRow + IndCol) < MatIn(IndRow, IndCol)
            Ind = Ind + 1;
            IndexOut(Ind, 1) = IndRow;
            IndexOut(Ind, 2) = IndCol;
        end
    end
end


end

