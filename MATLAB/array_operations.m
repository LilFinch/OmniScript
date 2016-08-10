% Mathematical Operations with Arrays
clc; format compact;

% Create two square matrices, A & B
A = [1 1 1; 2 2 2; 3 3 3]
B = [2 2 2; 3 3 3; 4 4 4]

% Element-by-element operations (3.4)
%  A & B must be the same dimensions!
AxB = A.*B
AdivB = A./B;
Asqrd = A.^2;

% Addition and subtraction
%  A & B must be the same dimensions!
AplusB = A+B
AminusB = A-B

x = [1 2 3]
y = [1;2;3]

% x+y throws an error (diff dimensions)
% But x+y' is ok cuz you're TRANSPOSEing it to same dimension
x+y'

% Matrix operations
A*B;
%A/B;
A^2;

A'+B'
(A'+B')'