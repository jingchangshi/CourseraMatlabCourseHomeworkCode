function [ ArabicOut ] = roman( RomanIn )

% the translation core part is taken from this webpage: http://au.mathworks.com/matlabcentral/fileexchange/15423-convert-roman-to-arabic/content/roman2arabic.m

% % no two indetical elements around one
% % and three consecutive identical elements are valid
% Flag = 0;
% for Ind = 2 : length(RomanIn)-1
%     if RomanIn(Ind-1) == RomanIn(Ind+1) && RomanIn(Ind) ~= RomanIn(Ind-1)
%         if uint8(RomanIn(Ind)) > uint8(RomanIn(Ind-1))
%             Flag = 1;
%             break;
%         end
%     end
% end
% 

Flag = 0;
% check there is non 'I, V, X' element
for Ind = 1 : length(RomanIn)
    if RomanIn(Ind) ~= 'I' & RomanIn(Ind) ~= 'V' & RomanIn(Ind) ~= 'X'
        Flag = 1;
        break;
    end
end

%% 2 consecutive elements checking
if Flag == 0
    for Ind = 1 : length(RomanIn)-1
        if uint8(RomanIn(Ind)) <= uint8(RomanIn(Ind+1))
            if RomanIn(Ind) == 'V' % VX, VV are invalid
                Flag = 1;
            elseif RomanIn(Ind) == 'X' % XX is valid
                Flag = 0;
            elseif RomanIn(Ind) == 'I' % II, IV, IX are valid
                Flag = 0;
            end
        end
    end
end

% 3 consecutive elements checking
if Flag == 0
    for Ind = 1 : length(RomanIn)-2
        if RomanIn(Ind) <= RomanIn(Ind+1) & RomanIn(Ind) <= RomanIn(Ind+2)
            if RomanIn(Ind) == 'X' % XXX is invalid
                Flag = 1;
            elseif RomanIn(Ind) == 'V' % VVV, VVX, VXV, VXX are invalid
                Flag = 1;
            elseif RomanIn(Ind) == 'I' % III is valid, IVI, IIV, IVV, IXI, IIX, IXX, IVX, IXV are invalid
                if RomanIn(Ind) == RomanIn(Ind+1) & RomanIn(Ind) == RomanIn(Ind+2)
                    Flag = 0;
                else
                    Flag = 1;
                end
            end
        end
    end
end
% four consecutive elements are invalid
if Flag == 0
    for Ind = 2 : length(RomanIn)-2
        if RomanIn(Ind-1) == RomanIn(Ind) ...
            && RomanIn(Ind-1) == RomanIn(Ind+1) ...
            && RomanIn(Ind-1) == RomanIn(Ind+2)
            Flag = 1;
            break;
        end
    end
end

if Flag == 0
    % Take out from 
    RomanRepo  = { 'M'   'D'  'C' 'L' 'X' 'V' 'I' };
    ArabicRepo = [ 1000, 500, 100, 50, 10, 5,  1 ];
    
    for Ind = length(RomanIn):-1:1
        Index(Ind) = find( strcmpi( RomanRepo, RomanIn(Ind) ) );
    end
    
    % find indices that need subtracting
    Sgn = sign(diff(Index));
    
    % if indices are equal, still adding
    Sgn(Sgn == 0) = 1;
    
    % always add last index
    Sgn(end+1) = 1;
    
    % find Arabic number
    ArabicOut = uint8(sum(Sgn.*ArabicRepo(Index)));
    
    if ArabicOut > 20
        ArabicOut = uint8(0);
    end
end


if Flag == 1
    ArabicOut = uint8(0);
end

end
