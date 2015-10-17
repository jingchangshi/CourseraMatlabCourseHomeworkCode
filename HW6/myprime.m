function [ FlagPrime ] = myprime( IntIn )

FlagPrime = true;
for Ind = 2 : IntIn-1
    if rem(IntIn, Ind) == 0
        FlagPrime = false;
        break;
    end
end


end
