function [ LetterNMAX ] = letter_counter( TextFileName )

FileID = fopen(TextFileName, 'r');
if FileID == -1
    LetterNMAX = -1;
else
    TextArray = fread(FileID, '*char');
    CharLoc = find(isletter(TextArray));
    LetterNMAX = length(CharLoc);
end

end
