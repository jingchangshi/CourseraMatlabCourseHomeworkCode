function [ FlagOut ] = classify( QuantityIn )
if size(QuantityIn, 1) == 0 || size(QuantityIn, 2) == 0
    FlagOut = -1;
elseif size(QuantityIn, 1) == 1 && size(QuantityIn, 2) == 1
    FlagOut = 0;
elseif (size(QuantityIn, 1) == 1 && size(QuantityIn, 2) > 1 ) ...
        || (size(QuantityIn, 1) > 1 && size(QuantityIn, 2) == 1 )
    FlagOut = 1;
else
    FlagOut = 2;
end
end

