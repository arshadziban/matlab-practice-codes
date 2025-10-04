subplot(4,1,1);
n = -10:10;
impulse = @(n, n0) double(n == n0);
y1 = impulse(n, 0);
stem(n, y1, 'filled');
title('Unit Impulse Signal');

subplot(4,1,2);
step = @(n, n0) double(n >= n0);
y2 = step(n, 0);
stem(n, y2, 'filled');
title('Unit Step Signal');

subplot(4,1,3);
ramp = @(n, n0) (n - n0) .* double(n >= n0);
y3 = ramp(n, 0);
stem(n, y3, 'filled');
title('Unit Ramp Signal');

subplot(4,1,4);
expo = @(n, a, n0) (a.^(n - n0)) .* double(n >= 0);
y4 = expo(n, 0.8, 0);
stem(n, y4, 'filled');
title('Exponential Signal');
