function [ VectorOut ] = sort3( ScalarIn1, ScalarIn2, ScalarIn3 )
VectorOut = [ScalarIn1, ScalarIn2, ScalarIn3];
Flag = [0, 0, 0];
% Determine VectorOut(1), the minimum one.
if ScalarIn1 <= ScalarIn2
    if ScalarIn1 <= ScalarIn3
        VectorOut(1) = ScalarIn1;
        Flag(1) = 1;
    else
        VectorOut(1) = ScalarIn3;
        Flag(1) = 3;
    end
else
    if ScalarIn2 <= ScalarIn3
        VectorOut(1) = ScalarIn2;
        Flag(1) = 2;
    else
        VectorOut(1) = ScalarIn3;
        Flag(1) = 3;
    end
end
% Determine Vector(3), the maximum one.
if ScalarIn1 >= ScalarIn2
    if ScalarIn1 >= ScalarIn3
        VectorOut(3) = ScalarIn1;
        Flag(3) = 1;
    else
        VectorOut(3) = ScalarIn3;
        Flag(3) = 3;
    end
else
    if ScalarIn2 >= ScalarIn3
        VectorOut(3) = ScalarIn2;
        Flag(3) = 2;
    else
        VectorOut(3) = ScalarIn3;
        Flag(3) = 3;
    end
end
%
if Flag(1) == 1
    if Flag(3) == 3
        VectorOut(2) = ScalarIn2;
    else
        VectorOut(2) = ScalarIn3;
    end
elseif Flag(1) == 2
    if Flag(3) == 3
        VectorOut(2) = ScalarIn1;
    else
        VectorOut(2) = ScalarIn3;
    end
else
    if Flag(3) == 2
        VectorOut(2) = ScalarIn1;
    else
        VectorOut(2) = ScalarIn2;
    end
end
    
        
end

