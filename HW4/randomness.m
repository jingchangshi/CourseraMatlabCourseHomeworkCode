function [ MatRand ] = randomness( Limit, N, M )
MatRand = rand(N, M);
MatRand = floor(Limit * MatRand) + 1;


end

