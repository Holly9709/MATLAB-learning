% Hodgkin-Huxley model of the neuron, to describe the spiking of a neuron, 
% based on the equations developed by Hodgkin and Huxley in 1952

% alphah.m, alpham.m, alphan.m, betah.m, betam.m, betan.m. These functions return the 
% voltage-dependent opening and closing rate constants for the h, m, and n gates.

% solve the ode function
tspan = [0 20]; % time
y0 = [0.5 0.5 0.5 -60]; % initial values
[t, ySS] = ode45(@neuronODE, tspan, y0);

% to verify that it reaches steady state by the end of the simulation
% plot(t, ySS(:, 4), 'k');
% xlabel('Time(ms)');
% ylabel('Transmembrane Voltage(mV)');
% title('Approaching Steady States');

% explore the trademark feature of the system
tspan = [0 20]; % time
figure
hold on
for n = 1:10 % solve the system for 10 times
    ySS(end, 4) = ySS(end, 4) + n; % increasing the initial value of V by 1, 2,... 10 mV
    [t, ySS] = ode45(@neuronODE, tspan, ySS(end, :));

    if max(ySS(:, 4)) > 0 % check weather the peak voltage surpassed 0mV
        plot(t, ySS(:, 4), 'r');
    else
        plot(t, ySS(:, 4), 'k');
    end
end
xlabel('Time(ms)');
ylabel('Transmembrane Voltage(mV)');
title('Threshold Behavior');
hold off

