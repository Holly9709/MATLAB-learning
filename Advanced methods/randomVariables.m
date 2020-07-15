% Make a vector of 500 random numbers from a Normal distribution with mean
% 2 and standard deviation 5
a = 2 + 5*randn(500,1);

aMean = mean(a);
aStd = std(a);
disp(['The mean of the vector a is ', num2str(aMean)]);
disp(['The standard deviation of the vector a is ', num2str(aStd)]);