% simulate sequentially flipping a coin 5000 times

coinResult = round(rand(5000,1)); % flipping a coin 5000 times, value 1 means heads of the coin
probability = cumsum(coinResult) ./(1:5000)';

% show the result
plot(500:5000, probability(500:5000), 'k', 'LineWidth', 1.5);
hold on
plot([1,5000], [0.5, 0.5], 'r');
ylim([0,0.8]);
xlabel('Number of coin flips');
ylabel('Probability of heads');
title('Sample Probability of Heads in n flips of a simulated coin');
legend('Sample Probability', 'Fair coin');
hold off
