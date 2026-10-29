clc;
clear;
close all;

t = -5:0.01:5;
x = sin(t) + cos(2*t);

y = 2*x;

%% 1. LINEARITY
x1 = sin(t);
x2 = cos(t);
a = 2;
b = 3;
y1 = 2*x1;
y2 = 2*x2;
y3 = 2*(a*x1 + b*x2);
error1 = max(abs(y3 - (a*y1 + b*y2)));

if error1 < 1e-10
    disp('System is Linear');
else
    disp('System is Non-Linear');
end

% 2. STABILITY

if max(abs(y)) < Inf
    disp('System is Stable');
else
    disp('System is Unstable');
end

% 3. TIME INVARIANCE
t0 = 2;
x = sin(t);
x_shift = sin(t-t0);
y1 = 2*x_shift;
y2 = 2*sin(t-t0);

error2 = max(abs(y1-y2));

if error2 < 1e-10
    disp('System is Time Invariant');
else
    disp('System is Time Variant');
end

% 4. ENERGY AND POWER

x = sin(t) + cos(2*t);

E = trapz(t,abs(x).^2);

T = t(end)-t(1);  % total time span of t by subtracting the first sample from the last sample.

% Average Power
P = E/T;

disp(['Energy = ',num2str(E)]);
disp(['Power = ',num2str(P)]);

% 5. EVEN AND ODD COMPONENTS
%xx=x(-t)
xx=sin(-t)+cos(-2*t);

% Even component
xeven = (x + xx)/2;

% Odd component
xodd = (x - xx)/2;

figure;
subplot(3,1,1);
plot(t,x);
grid on;
title('Original Signal x(t)');
xlabel('Time');
ylabel('Amplitude');

subplot(3,1,2);
plot(t,xeven);
grid on;
title('Even Component');
xlabel('Time');
ylabel('Amplitude');

subplot(3,1,3);
plot(t,xodd,'LineWidth',1.5);
grid on;
title('Odd Component');
xlabel('Time');
ylabel('Amplitude');
