function [ BellTriangle ] = bell( RowNMAX )
if RowNMAX <= 0
    BellTriangle = [];
elseif rem(RowNMAX, 1) > 0
    BellTriangle = [];
else
    % first construct the normal form of bell triangle.
    BellTriangle = zeros(RowNMAX);
    BellTriangle(1, 1) = 1;
    for IndRow = 2 : RowNMAX
        BellTriangle(IndRow, 1) = BellTriangle(IndRow-1, IndRow-1);
        for IndCol = 2 : IndRow
            BellTriangle(IndRow, IndCol) = BellTriangle(IndRow, IndCol-1) ...
                + BellTriangle(IndRow-1, IndCol-1);
        end
    end
    % then reconstruct the new version.
    for IndCol = 2 : RowNMAX
        BellTriangle(1:RowNMAX-IndCol+1, IndCol) = BellTriangle(IndCol:end, IndCol);
        BellTriangle(RowNMAX-IndCol+2:end, IndCol) = 0;
    end
end

end
