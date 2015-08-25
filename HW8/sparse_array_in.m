function [ SparseArray2D ] = sparse_array_in( SparseBinaryFileName )

FileID = fopen(SparseBinaryFileName, 'r');
if FileID == -1
    SparseArray2D = [];
else
    RowNMAX = fread(FileID, 1, 'uint32');
    ColNMAX = fread(FileID, 1, 'uint32');
    NonzeroArrayNMAX = fread(FileID, 1, 'uint32');
    SparseArray2D = zeros(RowNMAX, ColNMAX);
    for Ind = 1 : NonzeroArrayNMAX
        Row = fread(FileID, 1, 'uint32');
        Col = fread(FileID, 1, 'uint32');
        SparseArray2D(Row, Col) = fread(FileID, 1, 'double');
    end
    fclose(FileID);
end

end
