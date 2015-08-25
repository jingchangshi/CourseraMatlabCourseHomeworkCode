function [ StringNew ] = dial( StringIn )

for Ind = 1 : length(StringIn)
    AsciiNo = uint8(StringIn(Ind));
    if AsciiNo >= 65 && AsciiNo <= 67 % ABC
        StringNew(Ind) = '2';
    elseif AsciiNo >= 68 && AsciiNo <= 70 % DEF
        StringNew(Ind) = '3';
    elseif AsciiNo >= 71 && AsciiNo <= 73 % GHI
        StringNew(Ind) = '4';
    elseif AsciiNo >= 74 && AsciiNo <= 76 % JKL
        StringNew(Ind) = '5';
    elseif AsciiNo >= 77 && AsciiNo <= 79 % MNO
        StringNew(Ind) = '6';
    elseif AsciiNo == 80 | AsciiNo == 82 | AsciiNo == 83 % PRS
        StringNew(Ind) = '7';
    elseif AsciiNo >= 84 && AsciiNo <= 86 % TUV
        StringNew(Ind) = '8';
    elseif AsciiNo >= 87 && AsciiNo <= 89 % WXY
        StringNew(Ind) = '9';
    elseif AsciiNo == 40 | AsciiNo == 41 | AsciiNo == 45 % ()-
        StringNew(Ind) = ' ';
    elseif AsciiNo >= 48 && AsciiNo <= 57 % 0-9
        StringNew(Ind) = StringIn(Ind);
    elseif AsciiNo == 35 | AsciiNo == 42 | AsciiNo == 32 % #* 
        StringNew(Ind) = StringIn(Ind);
    else
        StringNew = [];
        break;
    end
end

end
