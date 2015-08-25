function [ SumOut ] = halfsum( MatIn )
MatUpperTri = triu(MatIn);
SumOut = sum(sum(MatUpperTri));


end

