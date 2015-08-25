function [ MeanSquare ] = mean_squares( PtsNMAX )
MeanSquare = sum( (1:PtsNMAX).^2 ) / PtsNMAX;
end