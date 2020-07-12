% Linear system of equations
% 3x + 6y + 4z = 1
% x  + 5y      = 2
%      7y + 7z = 3

% Construct matrices so the system is described by Ax=b
A = [3,6,4;1,5,0;0,7,7];
b = [1;2;3];
x = A\b; % solve
error = abs(A*x-b);
