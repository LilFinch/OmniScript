% Two-Dimensional Plots (Chapter 5)
clc; format compact; clear all;

% Input vectors must have the same length and orientation (horiz/vert)
x = 1:0.5:10;
y = sin(x)./x

% Basic functionality, with line specifiers and property values
%  (see colors and markers on p.122)
plot(x,y,'-om');

% Keep the graph window open, to overlay the following plots
hold on;

% Label the Plot
xlabel('X-Axis [x]');
ylabel('Y-axis [sin(x)/x]');
title('SuperNeat Graph');
text(1,1,'Far out.');

% plot multiple functions
z = cos(x)./x.^2;
plot(x,y,'-om',x,z,'-dc');
grid on;

% fplot - plot a function
bounds = [-6,12,-0.5,1.2];
fplot('sin(x)/x', bounds);

% Place Legend on graph
legend('sin(x)/x','cos(x)/x^2');
hold off;

% 5.5 Plots with logarithmic axes
x = 1:0.5:10;
y = exp(x);
semilogx(x,y);
semilogy(x,y);
loglog(x,y);

% 5.6 Error bars
errorbar(x,y,z);

% 5.10 Multiple plots on the same page
figure; %// Opens another plot window (e.g.,Figure 2)
subplot(2,2,1);
  semilogx(x,y);
subplot(2,2,2);
  semilogy(x,y);
subplot(2,2,3);
  loglog(x,y);
subplot(2,2,4);
  plot(x,y);


