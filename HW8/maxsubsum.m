function [ RowInitSubMatMaxSum, ColInitSubMatMaxSum, RowNMAXSubMatMaxSum, ColNMAXSubMatMaxSum, SubMatMaxSum ] = maxsubsum( MatIn )

RowNMAXMatIn = size(MatIn, 1);
ColNMAXMatIn = size(MatIn, 2);

RowInitSubMatMaxSum = 1;
ColInitSubMatMaxSum = 1;
RowNMAXSubMatMaxSum = RowNMAXMatIn;
ColNMAXSubMatMaxSum = ColNMAXMatIn;
SubMatMaxSum = sum(sum(MatIn));

for RowNMAXSubMat = 1 : RowNMAXMatIn
    for ColNMAXSubMat = 1 : ColNMAXMatIn
        for RowInitSubMat = 1 : RowNMAXMatIn-RowNMAXSubMat+1
            for ColInitSubMat = 1 : ColNMAXMatIn-ColNMAXSubMat+1
                SubMatSum = sum(sum( ...
                    MatIn(RowInitSubMat:RowInitSubMat+RowNMAXSubMat-1, ...
                          ColInitSubMat:ColInitSubMat+ColNMAXSubMat-1) ...
                          ));
                if SubMatSum > SubMatMaxSum
                    SubMatMaxSum = SubMatSum;
                    RowInitSubMatMaxSum = RowInitSubMat;
                    ColInitSubMatMaxSum = ColInitSubMat;
                    RowNMAXSubMatMaxSum = RowNMAXSubMat;
                    ColNMAXSubMatMaxSum = ColNMAXSubMat;
                end
            end
        end
    end
end

end
