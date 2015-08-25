function [ OutputFlag ] = sparse_array_out( DoubleArray2D, OutputFileName )

RowNMAX = uint32(size(DoubleArray2D, 1));
ColNMAX = uint32(size(DoubleArray2D, 2));
[NonzeroArrayLocRow, NonzeroArrayLocCol, NonzeroArray] = find(DoubleArray2D);
NonzeroArrayNMAX = uint32(length(NonzeroArray));

FileID = fopen(OutputFileName,'wb');
fwrite(FileID, RowNMAX, 'uint32');
fwrite(FileID, ColNMAX, 'uint32');
fwrite(FileID, NonzeroArrayNMAX, 'uint32');
for Ind = 1 : NonzeroArrayNMAX
    fwrite(FileID, uint32(NonzeroArrayLocRow(Ind)), 'uint32');
    fwrite(FileID, uint32(NonzeroArrayLocCol(Ind)), 'uint32');
    fwrite(FileID, NonzeroArray(Ind), 'double');
end

OutputFlag = fclose(FileID);

if OutputFlag == 0
    OutputFlag = true;
else
    OutputFlag = false;
end

end
