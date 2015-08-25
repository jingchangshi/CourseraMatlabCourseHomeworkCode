function [ AverageOut ] = moving_average( ScalarIn )
persistent VectorStored;

if size(VectorStored, 1) < 25
    VectorStored = cat(1, VectorStored, ScalarIn);
else
    VectorStored(1:24) = VectorStored(2:25);
    VectorStored(25) = ScalarIn;
end

AverageOut = mean(VectorStored);

end

