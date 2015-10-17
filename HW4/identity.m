function [ MatI ] = identity( N )
MatI = zeros(N);
for Ind = 1 : N
    MatI(Ind, Ind) = 1;
end
end

