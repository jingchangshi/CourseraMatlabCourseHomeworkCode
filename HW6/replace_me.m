function [ VectorNew ] = replace_me( VectorOld, ScalarA, varargin )
VarargsNMAX = length(varargin);
if VarargsNMAX == 0
    ScalarB = 0;
    ScalarC = 0;
elseif VarargsNMAX == 1
    ScalarB = varargin{1};
    ScalarC = ScalarB;
else
    ScalarB = varargin{1};
    ScalarC = varargin{2};
end
    AEqualIndex = (VectorOld == ScalarA);
    VectorNew = mat2cell( VectorOld, 1, ones(1, numel(VectorOld)) );
    VectorNew(AEqualIndex) = {[ScalarB, ScalarC]};
    VectorNew = cell2mat(VectorNew);
end

