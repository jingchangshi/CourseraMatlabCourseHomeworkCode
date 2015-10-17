function [ MinIntN ] = one_per_n( BoundX )
SumSeries = @(PtsN) sum(1./(1:PtsN));
IndNMAX = 10000;
Ind = 0;
MinIntN = -1;
while Ind < IndNMAX
    Ind = Ind + 1;
    if SumSeries(Ind) >= BoundX
        MinIntN = Ind;
        break;
    end
end


end

