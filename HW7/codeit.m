function [ CodedTxt ] = codeit( TxtIn )

CodedTxt = TxtIn;

for Ind = 1 : length(TxtIn)
    if TxtIn(Ind) >= 65 && TxtIn(Ind) <= 90 % Upper case
        Num4TxtElement = uint8(TxtIn(Ind));
        Num4TxtElementCoded = 90 - (Num4TxtElement - 65);
        CodedTxt(Ind) = char(Num4TxtElementCoded);
    end
    if TxtIn(Ind) >= 97 && TxtIn(Ind) <= 122 % Upper case
        Num4TxtElement = uint8(TxtIn(Ind));
        Num4TxtElementCoded = 122 - (Num4TxtElement - 97);
        CodedTxt(Ind) = char(Num4TxtElementCoded);
    end

end
