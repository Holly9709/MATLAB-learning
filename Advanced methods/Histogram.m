% Histogram and Poisson distribution
v = poissrnd(5, 3000, 1); % 1000 Poisson distributed random numbers with lambda = 5
[N, EDGES] = histcounts(v); % N is the count in each bins
Nprobability = N ./ sum(N); % normalize the count

bar(0:length(EDGES)-2,Nprobability);
hold on;
vP = poisspdf(0:length(EDGES)-2, 5); % the actual  Poisson probability mass function
plot(0:length(EDGES)-2,vP, 'LineWidth', 2);
xlabel('Values');
ylabel('Probability');
title('Poisson distribution and observed histogram');
legend('Experimental histogram', 'Actual Poisson Distribution');
hold off




