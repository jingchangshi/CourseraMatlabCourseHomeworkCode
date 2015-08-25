function [ CellStrOut ] = censor( CellStrIn, CensorString )
CellStrOut = [];
IndOut = 1;
for IndIn = 1 : length(CellStrIn)
    FlagMatch = strfind(CellStrIn{IndIn}, CensorString);
    if isempty(FlagMatch)
        CellStrOut{IndOut} = CellStrIn{IndIn};
        IndOut = IndOut + 1;
    end
end

end
