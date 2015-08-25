function [ PrimeSmallest ] = prime_pairs( InputInteger )
% this is a plain solution.
Flag = 0;
PrimesRepo = primes(100000);
for Ind = 1 : length(PrimesRepo)
    TestSum = isprime(PrimesRepo(Ind) + InputInteger);
    if TestSum
        PrimeSmallest = PrimesRepo(Ind);
        Flag = 1;
        break;
    end
end

if ~Flag
    PrimeSmallest = -1;
end

end
