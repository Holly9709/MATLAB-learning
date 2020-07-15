% Usually, cells are most useful for storing strings, because the length of
% each string can be unique

salInf = cell(3); % Salary information
salInf(1:3, 1) = {'Joe'; 'Sarah'; 'Pat'}; % the names
salInf(1:3, 2) = {'Smith'; 'Brown'; 'Jackson'}; % the last name
salInf(1:3, 3) = {30000; 150000; 120000}; % the salary
disp(salInf);

% change the value in cell
salInf{2,2} = 'Meyers';
disp(salInf);

salInf{3,3} = salInf{3,3} + 50000;
disp(salInf);


