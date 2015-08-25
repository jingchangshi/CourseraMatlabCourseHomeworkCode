function [ Generation ] = generationXYZ( Year )
if Year < 1966
    Generation = 'O';
elseif Year >= 1966 && Year <= 1980
    Generation = 'X';
elseif Year >= 1981 && Year <= 1999
    Generation = 'Y';
elseif Year >= 2000 && Year <= 2012
    Generation = 'Z';
else
    Generation = 'K';
end
end

