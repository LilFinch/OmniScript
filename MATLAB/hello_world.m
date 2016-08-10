% #######################
%   Hello World, MATLAB
% #######################

% User input
a = input('Type in a number: ');

% Is a even or odd?
if rem(a, 2) == 0
    str = sprintf('%s is an even number.', num2str(a));
else
    str = sprintf('%s is an odd number.', num2str(a));
end

disp(str);

% Compute sqrt(x)
sqrtguess = sprintf('What is the square root of %s? Take a guess: ', num2str(a));
yn = input(sqrtguess);
ynp1 = 0.5*(yn + a/yn);
guess = sprintf('A better guess is %s.', num2str(ynp1));
disp(guess);
sqrt(a)