function [ MatBoard ] = checkerboard( N, M )
MatBoard = zeros(N, M);
MatBoard(1:2:N, 1:2:M) = 1;
MatBoard(2:2:N, 2:2:M) = 1;
end

