function [ VectorSum ] = square_wave( NMAX )

Series = @(NMAX, ParameterT) sum( ( sin( (2*(1:NMAX)-1)*ParameterT ) ) ...
    ./ (2*(1:NMAX)-1) );
TRepo = linspace(0, 4*pi, 1001);
for Ind = 1 : length(TRepo)
    VectorSum(Ind) = Series(NMAX, TRepo(Ind));
end
end
