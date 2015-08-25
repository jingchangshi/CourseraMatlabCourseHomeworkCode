function [ Letter ] = letter_grade( Score )
if Score >= 91
    Letter = 'A';
elseif Score >= 81 && Score <= 90
    Letter = 'B';
elseif Score >= 71 && Score <= 80
    Letter = 'C';
elseif Score >= 61 && Score <= 70
    Letter = 'D';
else
    Letter = 'F';
end


end

