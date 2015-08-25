function [ PiApproximate, BoundNMAX ] = approximate_pi( Tol )

PiSeries = @(PiSeriesN) sqrt(12) * ...
    sum( (-3).^(-(0:PiSeriesN)) ./ (2*(0:PiSeriesN)+1) );

BoundNMAX = 0;
while abs( PiSeries(BoundNMAX) - pi ) > Tol
        BoundNMAX = BoundNMAX + 1;
end

PiApproximate = PiSeries(BoundNMAX);

end

