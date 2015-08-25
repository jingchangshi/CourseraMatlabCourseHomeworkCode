function [ VectorEven, VectorOdd ] = separate_by_two( MatIn )

if isscalar(MatIn)
    if mod(MatIn, 2) % odd
        VectorEven = [];
        VectorOdd = MatIn;
    else
        VectorEven = MatIn;
        VectorOdd = [];
    end
else
    VectorEven = MatIn( find( ~mod(MatIn, 2) ) )';
    VectorOdd = MatIn( find( mod(MatIn, 2) ) )';
end

end
