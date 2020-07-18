% use handles to set various properties of a figure
x = 0:0.1:2*pi;
y = sin(x);
figure
plot(x, y, 'r');
xlim([0 2*pi]);
A = gca; % get the handle for the current axis 
F = gcf; % get the handle for the current figure
set(A, 'xtick', [0 pi 2*pi]);
set(A, 'xticklabels', {'0', '1', '2'});
set(A, 'ytick', -1:.5:1);
grid on; % turn on the grid
set(A, 'ycolor', 'green', 'xcolor', 'cyan', 'color', 'k');
set(F, 'color', [.3 .3 .3]); % set the color property of the figure to a dark green
title('One sine wave from 0 to 2\pi', 'fontsize', 14, 'fontweight', 'bold', 'color', 'w');
xlabel('X values (in terms of \pi)', 'fontsize', 12, 'color', 'cyan');
ylabel('Sin(X)', 'fontsize', 12, 'color', 'green');

% Before copying the figure to paste it into word, look at copy options 
% (in the figure¡¯s Edit menu) and under ¡®figure background color¡¯ select 
%¡®use figure color¡¯.