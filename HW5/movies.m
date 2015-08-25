function [ Flag ] = movies( Hours1, Minutes1, DurationMinutes1, Hours2, Minutes2, DurationMinutes2 )
FlagOverlap = ( (Hours2*60+Minutes2)-(Hours1*60+Minutes1) ) ...
    >= DurationMinutes1;
FlagWait = ( (Hours2*60+Minutes2)-(Hours1*60+Minutes1) ) ...
    <= (DurationMinutes1+30);
Flag = FlagOverlap && FlagWait;


end

