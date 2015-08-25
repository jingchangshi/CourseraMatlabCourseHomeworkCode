function [ TimeMinute, DistKilometer ] = light_time( DistMile )
%UNTITLED5 此处显示有关此函数的摘要
%   此处显示详细说明
DistKilometer = DistMile * 1.609;
VelocityLight = 3E5;
TimeMinute = DistKilometer / VelocityLight;
TimeMinute = TimeMinute / 60;
end

