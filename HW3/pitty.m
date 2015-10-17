function [ MatC ] = pitty( MatAB )
MatC = zeros(size(MatAB, 1), 1);
for Ind = 1 : size(MatC, 1)
    MatC(Ind, 1) = sqrt( MatAB(Ind, 1)^2 + MatAB(Ind, 2)^2 );
end

end

