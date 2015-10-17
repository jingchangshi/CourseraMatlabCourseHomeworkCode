function [ StructSummary ] = May2015()

f1 = 'month';
v1 = {'May'};
f2 = 'date';
v2 = num2cell([1:31]');
f3 = 'day';
DayInitNo = 5;
DayRepo = [{'Mon'}; {'Tue'}; {'Wed'}; {'Thu'}; {'Fri'}; {'Sat'}; {'Sun'}];
for Ind = 1:31
    Remainder = rem(DayInitNo+Ind-1, 7);
    if Remainder == 0
        Remainder = 7;
    end
    v3(Ind, :) = DayRepo(Remainder, :);
end

StructSummary = struct(f1, v1, f2, v2, f3, v3);


end
