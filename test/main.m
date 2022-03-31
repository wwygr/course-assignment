clc; clear all; close all;
% % % % % 
z=1;
x=0:0.1:1;
for i=1:length(x)    
y(i)=get_precision_atan(x(i),z)
end 