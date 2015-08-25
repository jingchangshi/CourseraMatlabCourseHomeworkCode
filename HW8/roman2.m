function [ ArabicOut ] = roman2( RomanIn )

% this script cannot guarantee its scalability.
% the translation core part is taken from this webpage: http://au.mathworks.com/matlabcentral/fileexchange/15423-convert-roman-to-arabic/content/roman2arabic.m

IllegalFlag = 0;
% check there is non 'I, V, X, L, C' element
for Ind = 1 : length(RomanIn)
    if RomanIn(Ind) ~= 'I' & RomanIn(Ind) ~= 'V' ...
                           & RomanIn(Ind) ~= 'X' ...
                           & RomanIn(Ind) ~= 'L' ...
                           & RomanIn(Ind) ~= 'C'
        IllegalFlag = 1;
        break;
    end
end

if ~IllegalFlag
    RomanRepo  = { 'M'   'D'  'C' 'L' 'X' 'V' 'I' };
    ArabicRepo = [ 1000, 500, 100, 50, 10, 5,  1 ];

    for Ind = 1:length(RomanIn)
        Index(Ind) = find( strcmpi( RomanRepo, RomanIn(Ind) ) );
    end
end

%% 2 consecutive elements checking
if IllegalFlag == 0
    for Ind = 1 : length(RomanIn)-1
        if ArabicRepo(Index(Ind)) <= ArabicRepo(Index(Ind+1))
            if RomanIn(Ind) == 'V' % VX, VV are invalid
                IllegalFlag = 1;
                break;
            elseif RomanIn(Ind) == 'X' % XX is valid
                IllegalFlag = 0;
            elseif RomanIn(Ind) == 'I' % II, IV, IX are valid
                IllegalFlag = 0;
            end
        end
    end
end

% 3 consecutive elements checking
if IllegalFlag == 0
    for Ind = 1 : length(RomanIn)-2
        if ArabicRepo(Index(Ind)) <= ArabicRepo(Index(Ind+1)) ...
            & ArabicRepo(Index(Ind)) <= ArabicRepo(Index(Ind+2))
            if RomanIn(Ind) == 'X' & ArabicRepo(Index(Ind)) < ArabicRepo(Index(Ind+1)) % XXX is valid, XLX is invalid
                IllegalFlag = 1;
                break;
            elseif RomanIn(Ind) == 'V' % VVV, VVX, VXV, VXX are invalid
                IllegalFlag = 1;
                break;
            elseif RomanIn(Ind) == 'I' % III is valid, IVI, IIV, IVV, IXI, IIX, IXX, IVX, IXV are invalid
                if RomanIn(Ind) == RomanIn(Ind+1) & RomanIn(Ind) == RomanIn(Ind+2)
                    IllegalFlag = 0;
                else
                    IllegalFlag = 1;
                    break;
                end
            end
        end
    end
end
% four consecutive elements are invalid
if IllegalFlag == 0
    for Ind = 2 : length(RomanIn)-2
        if RomanIn(Ind-1) == RomanIn(Ind) ...
            && RomanIn(Ind-1) == RomanIn(Ind+1) ...
            && RomanIn(Ind-1) == RomanIn(Ind+2)
            IllegalFlag = 1;
            break;
        end
    end
end

if IllegalFlag == 0
    % Take out from 
    
    % find indices that need subtracting
    Sgn = sign(diff(Index));
    
    % if indices are equal, still adding
    Sgn(Sgn == 0) = 1;
    
    % always add last index
    Sgn(end+1) = 1;
    
    % find Arabic number
    ArabicOut = uint16(sum(Sgn.*ArabicRepo(Index)));
    
    if ArabicOut > 399
        ArabicOut = uint16(0);
    end
end


if IllegalFlag == 1
    ArabicOut = uint16(0);
end

end
