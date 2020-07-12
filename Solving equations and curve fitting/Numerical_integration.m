% Numerical integration
X = 0:0.1:5; % the coordinates or scalar spacing specified by X
Y = X.*exp(-X/3); 
ansNum = trapz(X, Y); % Integrate Y using trapz, numerical answer
ansAna = -24*exp(-5/3)+ 9; % analytical answer
disp(['The difference between numerical answer and analytical answer is ',...
    num2str(abs(ansNum-ansAna))]);