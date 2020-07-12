% Fitting polynomials

load randomData.mat % contain variables x and y

% use the centering and scaling version to get good fits
[p1, ~, mu1] = polyfit(x, y, 1); % fit first degree polynomials
[p2, ~, mu2] = polyfit(x, y, 2); % fit second degree polynomials
[p3, ~, mu3] = polyfit(x, y, 3); % third
[p4, ~, mu4] = polyfit(x, y, 4); % fourth
[p5, ~, mu5] = polyfit(x, y, 5); % fifth

% plot all five polynomial fits
plot(x, y, 'b.', 'MarkerSize', 10); % the original data
hold on
plot(x, polyval(p1, x, [], mu1));
plot(x, polyval(p2, x, [], mu2));
plot(x, polyval(p3, x, [], mu3));
plot(x, polyval(p4, x, [], mu4));
plot(x, polyval(p5, x, [], mu5));
title('Polynomial fits to noisy data');
xlabel('X');
ylabel('Y');
legend('Data', 'Order 1', 'Order 2', 'Order 3', 'Order 4', 'Order 5', 'Location', 'best');
hold off