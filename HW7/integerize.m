function [ UIntClass ] = integerize( MatIn )

LargestElement = max(max(MatIn));
if LargestElement <= 2^8 - 1
    UIntClass = 'uint8';
elseif LargestElement <= 2^16 - 1
    UIntClass = 'uint16';
elseif LargestElement <= 2^32 - 1
    UIntClass = 'uint32';
elseif LargestElement <= 2^64 - 1
    UIntClass = 'uint64';
else
    UIntClass = 'NONE';
end

end

