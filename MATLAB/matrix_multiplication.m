% Matrix Multiplication (3.2)
clc; format compact;

% A is a 4x3 matrix
A = [1 2 3; 1 2 3; 1 2 3; 1 2 3]
size(A)

% B is a 3x5 matrix
B = [1 2 3 4 5; 1 2 3 4 5; 1 2 3 4 5]
size(B)

% C will be a 4x5 matrix
% A and B inner matrix dimensions must agree (e.g., 3=3)
C = A*B
size(C)

% a 1x3 matrix
x = [1 2 3]
% a 3x1 matrix
y = [4;5;6]
% a 1x1 matrix
z = x*y
% a 3x3 matrix
z1 = y*x
% a 1x1 matrix
z2 = x*x'
% an error!!
%z3 = x*x

% Applications in Engineering (in notes)
A = [1 2 3; 2 -1 1; 3 0 -1]
X = [x;y;z]
B = [9;8;3]

X = inv(A)*B

