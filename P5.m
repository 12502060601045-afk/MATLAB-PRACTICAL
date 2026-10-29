clc;
clear;
close all;

% Rectangular * Rectangular
x = [1 1 1 1];
h = [1 1 1];
y = zeros(1,length(x)+length(h)-1);

for n = 1:length(y)
for k = 1:length(x)
j = n-k+1;
if j >= 1 && j <= length(h)
y(n) = y(n) + x(k)*h(j);
end
end
end
disp('Rectangular * Rectangular =');
disp(y);

% Rectangular * Triangular
x = [1 1 1 1];
h = [1 2 1];
y = zeros(1,length(x)+length(h)-1);

for n = 1:length(y)
for k = 1:length(x)
j = n-k+1;
if j >= 1 && j <= length(h)
y(n) = y(n) + x(k)*h(j);
end
end
end
disp('Rectangular * Triangular =');
disp(y);

% Triangular * Triangular
x = [1 2 1];
h = [1 2 1];
y = zeros(1,length(x)+length(h)-1);

for n = 1:length(y)
for k = 1:length(x)
j = n-k+1;
if j >= 1 && j <= length(h)
y(n) = y(n) + x(k)*h(j);
end
end
end
disp('Triangular * Triangular =');
disp(y);

figure;
subplot(3,1,1); stem([1 2 3 4 5 6],[1 2 3 3 2 1],'filled'); grid on;
title('Rectangular * Rectangular');

subplot(3,1,2); stem([1 2 3 4 5 6],[1 3 4 4 3 1],'filled'); grid on;
title('Rectangular * Triangular');

subplot(3,1,3); stem([1 2 3 4 5],[1 4 6 4 1],'filled'); grid on;
title('Triangular * Triangular');
