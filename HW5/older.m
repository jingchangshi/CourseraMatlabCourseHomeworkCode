function [ Flag ] = older( Year1, Month1, Day1, Year2, Month2, Day2 )
if Year1 < Year2
    Flag = 1;
elseif Year1 == Year2
    if Month1 < Month2
        Flag = 1;
    elseif Month1 == Month2
        if Day1 < Day2
            Flag = 1;
        elseif Day1 == Day2
            Flag = 0;
        else
            Flag = -1;
        end
    else
        Flag = -1;
    end
else
    Flag = -1;
end


end

