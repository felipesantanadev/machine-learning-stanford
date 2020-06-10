t = [0 : 0.01 : 0.98];
t

y1 = sin(2 * pi * 4 * t)
plot(t, y1)

hold on;

y2 = cos(2 * pi * 4 * t)
plot(t, y2)
xlabel('time');
ylabel('value');
legend('sin', 'cos');
title('My Plot');
print dpng 'myPlot.png';

% Creating two figures in the same plot
subplot(1, 2, 1); % Divides the plot in a 1x2 grid and access the element 1
plot(t, y1);
subplot(1, 2, 2); % Divides the plot in a 1x2 grid and access the element 2
plot(t, y2);
