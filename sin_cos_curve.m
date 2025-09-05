t = 0:0.05:4*pi;
sineWave = sin(t);
cosineWave = cos(t);

figure;
plot(t, sineWave, 'm', 'LineWidth', 2);
hold on;
plot(t, cosineWave, 'g', 'LineWidth', 2);
hold off;

xlabel('time');
ylabel('signal amplitude');
title('sine and cosine functions');
legend('sine wave', 'cosine wave');
grid on;