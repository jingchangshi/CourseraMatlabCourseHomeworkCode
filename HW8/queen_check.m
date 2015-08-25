function [ NoThreatenFlag ] = queen_check( BoardLogical8x8 )
NoThreatenFlag = true;
for IndRow = 1 : 8
    if NoThreatenFlag == false
        break;
    end
    for IndCol = 1 : 8
        ExistQueen = BoardLogical8x8(IndRow, IndCol);
        if ExistQueen
            ExistRowThreat = nnz(BoardLogical8x8(IndRow, :)) - 1;
            if ExistRowThreat
                NoThreatenFlag = false;
                break;
            else
                ExistColThreat = nnz(BoardLogical8x8(:, IndCol)) - 1;
                if ExistColThreat
                    NoThreatenFlag = false;
                    break;
                else
                    OffSetDiag = IndCol - IndRow; % get diagonal elements in normal order
                    SubMat = diag(BoardLogical8x8, OffSetDiag);
                    ExistDiagThreat = nnz(SubMat) - 1; % given there is already one queen, we need 2 'true'.
                    if ExistDiagThreat
                        NoThreatenFlag = false;
                        break;
                    else
                        OffSetDiag = IndCol - (8-IndRow+1);  % get diagonal elements in flip order
                        SubMat = diag(flip(BoardLogical8x8, 1), OffSetDiag); % flip(A, 1)
                        ExistDiagThreat = nnz(SubMat) - 1;
                        if ExistDiagThreat
                            NoThreatenFlag = false;
                            break;
                        else
                            NoThreatenFlag = true;
                        end
                    end
                end
            end
        end
    end
end



end
