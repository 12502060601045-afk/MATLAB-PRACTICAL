clc;
clear;
close all;

% Time axis
t = -2:0.001:2;
f = 2;                         % Frequency = 2 Hz

x1 = sin(2*pi*f*t);

figure;
plot(t,x1);
grid on;
xlabel('Time (s)');
ylabel('Amplitude');
title('Sine Signal');

T=1/f;
x2 = cos(2*pi*t/T);

figure;
plot(t,x2);
grid on;
xlabel('Time (s)');
ylabel('Amplitude');
title('Cosine Signal');


x3 = sawtooth(2*pi*f*t,0.5);

figure;
plot(t,x3);
grid on;
xlabel('Time (s)');
ylabel('Amplitude');
title('Triangle Waveform');

x4 = double(abs(t) <= 0.5);

figure;
plot(t,x4);
grid on;
xlabel('Time (s)');
ylabel('Amplitude');
title('Rectangular Pulse');

x5 = sawtooth(2*pi*f*t);

figure;
plot(t,x5);
grid on;
xlabel('Time (s)');
ylabel('Amplitude');
title('Sawtooth Waveform');


a = -1/2;
x6 = exp(a*t);

figure;
plot(t,x6);
grid on;
xlabel('Time (s)');
ylabel('Amplitude');
title('Exponential Signal');
