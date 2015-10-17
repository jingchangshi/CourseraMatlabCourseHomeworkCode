function [ ValueTotal ] = rich( CoinNMAX )
% rich
% Input parameters:
%   PennyNMAX: Number of pennies
%   NickelNMAX: Number of nickels
%   DimeNMAX: Number of dimes
%   QuarterNMAX: Number of quarters
% Output parameters:
%   ValueTotal: Total value of all coins
PennyNMAX = CoinNMAX(1);
NickelNAMX = CoinNMAX(2);
DimeNMAX = CoinNMAX(3);
QuarterNMAX = CoinNMAX(4);
ValueTotal = 0.01 * PennyNMAX ...
    + 0.05 * NickelNAMX ...
    + 0.1 * DimeNMAX ...
    + 0.25 * QuarterNMAX;
end

