% Matrices (2.6 - 2.8)
clc; format compact;

% Build a [4,4] square matrix
foo = [1 2 3 8; 4 5 6 8; 7 8 9 8; 8 8 8 8];
% Find dimensions of matrix "foo"
size(foo);
% Find longest dimension of matrix "foo"
length(foo);
% Create a vector from matrix diagonal
diagfoo = diag(foo);
% Address Row 1, Column 3
foo(1,3);
% Address ALL foo elements between 1 and 5
foo(1:5);
% Address Row 1 only
foo(1,:);
% Address Column 1 only
foo(:,1);
% Address Columns 1-3
foo(:,1:3);
% Address Rows 1-3
foo(1:3,:);
% Adding elements
bar = 5:2:11;
foo(4,:) = bar;
% MATLAB fills in zeros!!
foo(7,4) = 66;
% Deleting elements (rows 5-7)
% simply assign NOTHING
foo(5:7,:) = [];

% Create a matrix with strings as rows
name = char('foo','bar','cake');