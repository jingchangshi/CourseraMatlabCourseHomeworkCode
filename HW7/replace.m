function [ CellVectorNew ] = replace( CellVectorIn, CharacterOld, CharacterNew )

for IndVector = 1 : length(CellVectorIn)
    CellIn = CellVectorIn{IndVector};
    CellIn(find ( CellIn == CharacterOld )) = CharacterNew;
    CellVectorNew{IndVector} = CellIn;
end


end
