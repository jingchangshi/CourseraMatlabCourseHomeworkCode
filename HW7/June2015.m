function [ CellOut ] = June2015()

CellOut = cell(30, 3);

for Ind = 1 : 30
    CellOut{Ind, 1} = 'June';
end
for Ind = 1 : 30
    CellOut{Ind, 2} = Ind;
end
DayInitNo = 1;
DayRepo = ['Mon'; 'Tue'; 'Wed'; 'Thu'; 'Fri'; 'Sat'; 'Sun'];
for Ind = 1:30
    Remainder = rem(DayInitNo+Ind-1, 7);
    if Remainder == 0
        Remainder = 7;
    end
    CellOut{Ind, 3} = DayRepo(Remainder, :);
end

end


