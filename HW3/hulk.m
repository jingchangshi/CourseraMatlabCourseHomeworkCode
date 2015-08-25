function [ Mat3Col ] = hulk( VectorIn )
Mat3Col(:, 1) = VectorIn';
Mat3Col(:, 2) = (VectorIn').^2;
Mat3Col(:, 3) = (VectorIn').^3;
end

