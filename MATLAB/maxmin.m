function [x,y] = maxmin(a,b,c)
% Calculates the global extrema of a quadratic function

global A1; global A2; global C

% Find min/max using first derivative test
x = (-b)/(2*a);
y = ((4*a*c)-b^2)/(4*a);
C = [x,y];

% Term under sqrt, call it Z
Z = b^2 - 4*a*c

% Find x-intercepts
A1 = (-b + sqrt(Z))/(2*a);
A2 = (-b - sqrt(Z))/(2*a);

% Swap A1 and A2 if A1 is bigger!
if A1 > A2
    A2_temp = A2;
    A2 = A1;
    A1 = A2_temp;
end

