% 1. Define a continuous time vector (high resolution for smooth lines)
t = -5:0.01:5;

% 2. Define the Original Signal: x(t) = e^(-t) for t >= 0
% We multiply by (t >= 0) to ensure it is zero for negative time.
x_original = exp(-t) .* (t >= 0);

% 3. Time Shifting: x(t - 2) -> Shifts signal to the RIGHT by 2
% Replace every 't' with '(t-2)'
x_shifted = exp(-(t-2)) .* ((t-2) >= 0);

% 4. Time Scaling: x(2t) -> Compresses the signal by a factor of 2
% Replace every 't' with '(2*t)'
x_scaled = exp(-(2*t)) .* ((2*t) >= 0);

% 5. Time Reversal: x(-t) -> Flips the signal horizontally across the y-axis
% Replace every 't' with '(-t)'
x_reversed = exp(-(-t)) .* ((-t) >= 0);

% 6. Plot the Operations
figure('Name', 'Signal Operations');

subplot(4, 1, 1);
plot(t, x_original, 'b', 'LineWidth', 2);
title('Original Signal: x(t)');
grid on;

subplot(4, 1, 2);
plot(t, x_shifted, 'r', 'LineWidth', 2);
title('Time Shifted: x(t - 2) [Delayed]');
grid on;

subplot(4, 1, 3);
plot(t, x_scaled, 'g', 'LineWidth', 2);
title('Time Scaled: x(2t) [Compressed]');
grid on;

subplot(4, 1, 4);
plot(t, x_reversed, 'm', 'LineWidth', 2);
title('Time Reversed: x(-t) [Flipped]');
grid on;