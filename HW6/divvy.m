function [ MatNew ] = divvy( MatOld, Factor )

MatNew(find(~mod(MatOld, Factor))) = MatOld(find(~mod(MatOld, Factor)));
MatNew(find(mod(MatOld, Factor))) = MatOld(find(mod(MatOld, Factor))) * Factor;
MatNew = reshape(MatNew, size(MatOld));

end
