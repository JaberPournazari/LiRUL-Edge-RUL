clc
clear

% Read the CSV file
data = readtable('../../CapacityConvert/Capacity_1.xlsx');

% Extract Cycle column (Ensure it's numeric)
cycles = data.Cycle;
cycles = double(cycles); % Convert to numeric if necessary

% Define the number of new points to insert between each cycle step
num_new_points = 10;

% Get the "Capacity" column
capacity = data.Capacity;
capacity = double(capacity); % Ensure numeric

% Initialize new data storage
new_cycles = [];
interpolated_capacity = [];

% Loop through cycle steps and interpolate "Capacity"
for i = 1:length(cycles)-1
    % Skip duplicate cycles or NaN/Inf values
    if cycles(i) == cycles(i+1) || isnan(cycles(i)) || isnan(cycles(i+1)) || isinf(cycles(i)) || isinf(cycles(i+1))
        continue;
    end
    
    % Generate 10 intermediate cycle values
    interp_cycles = round(linspace(cycles(i), cycles(i+1), num_new_points + 2))'; 
    interp_cycles = unique(interp_cycles, 'stable'); % Remove duplicates
    
    % Store new cycles (excluding last to avoid duplication)
    new_cycles = [new_cycles; interp_cycles(1:end-1)];
    
    % Perform interpolation for "Capacity"
    interp_capacity = interp1([cycles(i), cycles(i+1)], [capacity(i), capacity(i+1)], interp_cycles, 'linear');
    
    interpolated_capacity = [interpolated_capacity; interp_capacity(1:end-1)]; % Store interpolated values
end

% Append the last original row
new_cycles = [new_cycles; cycles(end)];
interpolated_capacity = [interpolated_capacity; capacity(end)];

% Create a new table with interpolated values
new_data = table(new_cycles, interpolated_capacity, 'VariableNames', {'Cycle', 'Capacity'});

% Save to a new CSV file
writetable(new_data, 'CapacityInterpolation1.csv');

disp('Interpolation complete! File saved as CapacityInterpolation1.csv');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Read the CSV file
data = readtable('../../CapacityConvert\Capacity_2.xlsx');

% Extract Cycle column (Ensure it's numeric)
cycles = data.Cycle;
cycles = double(cycles); % Convert to numeric if necessary

% Define the number of new points to insert between each cycle step
num_new_points = 10;

% Get the "Capacity" column
capacity = data.Capacity;
capacity = double(capacity); % Ensure numeric

% Initialize new data storage
new_cycles = [];
interpolated_capacity = [];

% Loop through cycle steps and interpolate "Capacity"
for i = 1:length(cycles)-1
    % Skip duplicate cycles or NaN/Inf values
    if cycles(i) == cycles(i+1) || isnan(cycles(i)) || isnan(cycles(i+1)) || isinf(cycles(i)) || isinf(cycles(i+1))
        continue;
    end
    
    % Generate 10 intermediate cycle values
    interp_cycles = round(linspace(cycles(i), cycles(i+1), num_new_points + 2))'; 
    interp_cycles = unique(interp_cycles, 'stable'); % Remove duplicates
    
    % Store new cycles (excluding last to avoid duplication)
    new_cycles = [new_cycles; interp_cycles(1:end-1)];
    
    % Perform interpolation for "Capacity"
    interp_capacity = interp1([cycles(i), cycles(i+1)], [capacity(i), capacity(i+1)], interp_cycles, 'linear');
    
    interpolated_capacity = [interpolated_capacity; interp_capacity(1:end-1)]; % Store interpolated values
end

% Append the last original row
new_cycles = [new_cycles; cycles(end)];
interpolated_capacity = [interpolated_capacity; capacity(end)];

% Create a new table with interpolated values
new_data = table(new_cycles, interpolated_capacity, 'VariableNames', {'Cycle', 'Capacity'});

% Save to a new CSV file
writetable(new_data, 'CapacityInterpolation2.csv');

disp('Interpolation complete! File saved as CapacityInterpolation2.csv');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Read the CSV file
data = readtable('../../CapacityConvert\Capacity_3.xlsx');

% Extract Cycle column (Ensure it's numeric)
cycles = data.Cycle;
cycles = double(cycles); % Convert to numeric if necessary

% Define the number of new points to insert between each cycle step
num_new_points = 10;

% Get the "Capacity" column
capacity = data.Capacity;
capacity = double(capacity); % Ensure numeric

% Initialize new data storage
new_cycles = [];
interpolated_capacity = [];

% Loop through cycle steps and interpolate "Capacity"
for i = 1:length(cycles)-1
    % Skip duplicate cycles or NaN/Inf values
    if cycles(i) == cycles(i+1) || isnan(cycles(i)) || isnan(cycles(i+1)) || isinf(cycles(i)) || isinf(cycles(i+1))
        continue;
    end
    
    % Generate 10 intermediate cycle values
    interp_cycles = round(linspace(cycles(i), cycles(i+1), num_new_points + 2))'; 
    interp_cycles = unique(interp_cycles, 'stable'); % Remove duplicates
    
    % Store new cycles (excluding last to avoid duplication)
    new_cycles = [new_cycles; interp_cycles(1:end-1)];
    
    % Perform interpolation for "Capacity"
    interp_capacity = interp1([cycles(i), cycles(i+1)], [capacity(i), capacity(i+1)], interp_cycles, 'linear');
    
    interpolated_capacity = [interpolated_capacity; interp_capacity(1:end-1)]; % Store interpolated values
end

% Append the last original row
new_cycles = [new_cycles; cycles(end)];
interpolated_capacity = [interpolated_capacity; capacity(end)];

% Create a new table with interpolated values
new_data = table(new_cycles, interpolated_capacity, 'VariableNames', {'Cycle', 'Capacity'});

% Save to a new CSV file
writetable(new_data, 'CapacityInterpolation3.csv');

disp('Interpolation complete! File saved as CapacityInterpolation3.csv');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Read the CSV file
data = readtable('../../CapacityConvert\Capacity_4.xlsx');

% Extract Cycle column (Ensure it's numeric)
cycles = data.Cycle;
cycles = double(cycles); % Convert to numeric if necessary

% Define the number of new points to insert between each cycle step
num_new_points = 10;

% Get the "Capacity" column
capacity = data.Capacity;
capacity = double(capacity); % Ensure numeric

% Initialize new data storage
new_cycles = [];
interpolated_capacity = [];

% Loop through cycle steps and interpolate "Capacity"
for i = 1:length(cycles)-1
    % Skip duplicate cycles or NaN/Inf values
    if cycles(i) == cycles(i+1) || isnan(cycles(i)) || isnan(cycles(i+1)) || isinf(cycles(i)) || isinf(cycles(i+1))
        continue;
    end
    
    % Generate 10 intermediate cycle values
    interp_cycles = round(linspace(cycles(i), cycles(i+1), num_new_points + 2))'; 
    interp_cycles = unique(interp_cycles, 'stable'); % Remove duplicates
    
    % Store new cycles (excluding last to avoid duplication)
    new_cycles = [new_cycles; interp_cycles(1:end-1)];
    
    % Perform interpolation for "Capacity"
    interp_capacity = interp1([cycles(i), cycles(i+1)], [capacity(i), capacity(i+1)], interp_cycles, 'linear');
    
    interpolated_capacity = [interpolated_capacity; interp_capacity(1:end-1)]; % Store interpolated values
end

% Append the last original row
new_cycles = [new_cycles; cycles(end)];
interpolated_capacity = [interpolated_capacity; capacity(end)];

% Create a new table with interpolated values
new_data = table(new_cycles, interpolated_capacity, 'VariableNames', {'Cycle', 'Capacity'});

% Save to a new CSV file
writetable(new_data, 'CapacityInterpolation4.csv');

disp('Interpolation complete! File saved as CapacityInterpolation4.csv');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Read the CSV file
data = readtable('../../CapacityConvert\Capacity_5.xlsx');

% Extract Cycle column (Ensure it's numeric)
cycles = data.Cycle;
cycles = double(cycles); % Convert to numeric if necessary

% Define the number of new points to insert between each cycle step
num_new_points = 10;

% Get the "Capacity" column
capacity = data.Capacity;
capacity = double(capacity); % Ensure numeric

% Initialize new data storage
new_cycles = [];
interpolated_capacity = [];

% Loop through cycle steps and interpolate "Capacity"
for i = 1:length(cycles)-1
    % Skip duplicate cycles or NaN/Inf values
    if cycles(i) == cycles(i+1) || isnan(cycles(i)) || isnan(cycles(i+1)) || isinf(cycles(i)) || isinf(cycles(i+1))
        continue;
    end
    
    % Generate 10 intermediate cycle values
    interp_cycles = round(linspace(cycles(i), cycles(i+1), num_new_points + 2))'; 
    interp_cycles = unique(interp_cycles, 'stable'); % Remove duplicates
    
    % Store new cycles (excluding last to avoid duplication)
    new_cycles = [new_cycles; interp_cycles(1:end-1)];
    
    % Perform interpolation for "Capacity"
    interp_capacity = interp1([cycles(i), cycles(i+1)], [capacity(i), capacity(i+1)], interp_cycles, 'linear');
    
    interpolated_capacity = [interpolated_capacity; interp_capacity(1:end-1)]; % Store interpolated values
end

% Append the last original row
new_cycles = [new_cycles; cycles(end)];
interpolated_capacity = [interpolated_capacity; capacity(end)];

% Create a new table with interpolated values
new_data = table(new_cycles, interpolated_capacity, 'VariableNames', {'Cycle', 'Capacity'});

% Save to a new CSV file
writetable(new_data, 'CapacityInterpolation5.csv');

disp('Interpolation complete! File saved as CapacityInterpolation5.csv');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Read the CSV file
data = readtable('../../CapacityConvert\Capacity_6.xlsx');

% Extract Cycle column (Ensure it's numeric)
cycles = data.Cycle;
cycles = double(cycles); % Convert to numeric if necessary

% Define the number of new points to insert between each cycle step
num_new_points = 10;

% Get the "Capacity" column
capacity = data.Capacity;
capacity = double(capacity); % Ensure numeric

% Initialize new data storage
new_cycles = [];
interpolated_capacity = [];

% Loop through cycle steps and interpolate "Capacity"
for i = 1:length(cycles)-1
    % Skip duplicate cycles or NaN/Inf values
    if cycles(i) == cycles(i+1) || isnan(cycles(i)) || isnan(cycles(i+1)) || isinf(cycles(i)) || isinf(cycles(i+1))
        continue;
    end
    
    % Generate 10 intermediate cycle values
    interp_cycles = round(linspace(cycles(i), cycles(i+1), num_new_points + 2))'; 
    interp_cycles = unique(interp_cycles, 'stable'); % Remove duplicates
    
    % Store new cycles (excluding last to avoid duplication)
    new_cycles = [new_cycles; interp_cycles(1:end-1)];
    
    % Perform interpolation for "Capacity"
    interp_capacity = interp1([cycles(i), cycles(i+1)], [capacity(i), capacity(i+1)], interp_cycles, 'linear');
    
    interpolated_capacity = [interpolated_capacity; interp_capacity(1:end-1)]; % Store interpolated values
end

% Append the last original row
new_cycles = [new_cycles; cycles(end)];
interpolated_capacity = [interpolated_capacity; capacity(end)];

% Create a new table with interpolated values
new_data = table(new_cycles, interpolated_capacity, 'VariableNames', {'Cycle', 'Capacity'});

% Save to a new CSV file
writetable(new_data, 'CapacityInterpolation6.csv');

disp('Interpolation complete! File saved as CapacityInterpolation6.csv');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Read the CSV file
data = readtable('../../CapacityConvert\Capacity_7.xlsx');

% Extract Cycle column (Ensure it's numeric)
cycles = data.Cycle;
cycles = double(cycles); % Convert to numeric if necessary

% Define the number of new points to insert between each cycle step
num_new_points = 10;

% Get the "Capacity" column
capacity = data.Capacity;
capacity = double(capacity); % Ensure numeric

% Initialize new data storage
new_cycles = [];
interpolated_capacity = [];

% Loop through cycle steps and interpolate "Capacity"
for i = 1:length(cycles)-1
    % Skip duplicate cycles or NaN/Inf values
    if cycles(i) == cycles(i+1) || isnan(cycles(i)) || isnan(cycles(i+1)) || isinf(cycles(i)) || isinf(cycles(i+1))
        continue;
    end
    
    % Generate 10 intermediate cycle values
    interp_cycles = round(linspace(cycles(i), cycles(i+1), num_new_points + 2))'; 
    interp_cycles = unique(interp_cycles, 'stable'); % Remove duplicates
    
    % Store new cycles (excluding last to avoid duplication)
    new_cycles = [new_cycles; interp_cycles(1:end-1)];
    
    % Perform interpolation for "Capacity"
    interp_capacity = interp1([cycles(i), cycles(i+1)], [capacity(i), capacity(i+1)], interp_cycles, 'linear');
    
    interpolated_capacity = [interpolated_capacity; interp_capacity(1:end-1)]; % Store interpolated values
end

% Append the last original row
new_cycles = [new_cycles; cycles(end)];
interpolated_capacity = [interpolated_capacity; capacity(end)];

% Create a new table with interpolated values
new_data = table(new_cycles, interpolated_capacity, 'VariableNames', {'Cycle', 'Capacity'});

% Save to a new CSV file
writetable(new_data, 'CapacityInterpolation7.csv');

disp('Interpolation complete! File saved as CapacityInterpolation7.csv');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Read the CSV file
data = readtable('../../CapacityConvert\Capacity_8.xlsx');

% Extract Cycle column (Ensure it's numeric)
cycles = data.Cycle;
cycles = double(cycles); % Convert to numeric if necessary

% Define the number of new points to insert between each cycle step
num_new_points = 10;

% Get the "Capacity" column
capacity = data.Capacity;
capacity = double(capacity); % Ensure numeric

% Initialize new data storage
new_cycles = [];
interpolated_capacity = [];

% Loop through cycle steps and interpolate "Capacity"
for i = 1:length(cycles)-1
    % Skip duplicate cycles or NaN/Inf values
    if cycles(i) == cycles(i+1) || isnan(cycles(i)) || isnan(cycles(i+1)) || isinf(cycles(i)) || isinf(cycles(i+1))
        continue;
    end
    
    % Generate 10 intermediate cycle values
    interp_cycles = round(linspace(cycles(i), cycles(i+1), num_new_points + 2))'; 
    interp_cycles = unique(interp_cycles, 'stable'); % Remove duplicates
    
    % Store new cycles (excluding last to avoid duplication)
    new_cycles = [new_cycles; interp_cycles(1:end-1)];
    
    % Perform interpolation for "Capacity"
    interp_capacity = interp1([cycles(i), cycles(i+1)], [capacity(i), capacity(i+1)], interp_cycles, 'linear');
    
    interpolated_capacity = [interpolated_capacity; interp_capacity(1:end-1)]; % Store interpolated values
end

% Append the last original row
new_cycles = [new_cycles; cycles(end)];
interpolated_capacity = [interpolated_capacity; capacity(end)];

% Create a new table with interpolated values
new_data = table(new_cycles, interpolated_capacity, 'VariableNames', {'Cycle', 'Capacity'});

% Save to a new CSV file
writetable(new_data, 'CapacityInterpolation8.csv');

disp('Interpolation complete! File saved as CapacityInterpolation8.csv');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Read the CSV file
data = readtable('../../CapacityConvert\Capacity_9.xlsx');

% Extract Cycle column (Ensure it's numeric)
cycles = data.Cycle;
cycles = double(cycles); % Convert to numeric if necessary

% Define the number of new points to insert between each cycle step
num_new_points = 10;

% Get the "Capacity" column
capacity = data.Capacity;
capacity = double(capacity); % Ensure numeric

% Initialize new data storage
new_cycles = [];
interpolated_capacity = [];

% Loop through cycle steps and interpolate "Capacity"
for i = 1:length(cycles)-1
    % Skip duplicate cycles or NaN/Inf values
    if cycles(i) == cycles(i+1) || isnan(cycles(i)) || isnan(cycles(i+1)) || isinf(cycles(i)) || isinf(cycles(i+1))
        continue;
    end
    
    % Generate 10 intermediate cycle values
    interp_cycles = round(linspace(cycles(i), cycles(i+1), num_new_points + 2))'; 
    interp_cycles = unique(interp_cycles, 'stable'); % Remove duplicates
    
    % Store new cycles (excluding last to avoid duplication)
    new_cycles = [new_cycles; interp_cycles(1:end-1)];
    
    % Perform interpolation for "Capacity"
    interp_capacity = interp1([cycles(i), cycles(i+1)], [capacity(i), capacity(i+1)], interp_cycles, 'linear');
    
    interpolated_capacity = [interpolated_capacity; interp_capacity(1:end-1)]; % Store interpolated values
end

% Append the last original row
new_cycles = [new_cycles; cycles(end)];
interpolated_capacity = [interpolated_capacity; capacity(end)];

% Create a new table with interpolated values
new_data = table(new_cycles, interpolated_capacity, 'VariableNames', {'Cycle', 'Capacity'});

% Save to a new CSV file
writetable(new_data, 'CapacityInterpolation9.csv');

disp('Interpolation complete! File saved as CapacityInterpolation9.csv');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Read the CSV file
data = readtable('../../CapacityConvert\Capacity_10.xlsx');

% Extract Cycle column (Ensure it's numeric)
cycles = data.Cycle;
cycles = double(cycles); % Convert to numeric if necessary

% Define the number of new points to insert between each cycle step
num_new_points = 10;

% Get the "Capacity" column
capacity = data.Capacity;
capacity = double(capacity); % Ensure numeric

% Initialize new data storage
new_cycles = [];
interpolated_capacity = [];

% Loop through cycle steps and interpolate "Capacity"
for i = 1:length(cycles)-1
    % Skip duplicate cycles or NaN/Inf values
    if cycles(i) == cycles(i+1) || isnan(cycles(i)) || isnan(cycles(i+1)) || isinf(cycles(i)) || isinf(cycles(i+1))
        continue;
    end
    
    % Generate 10 intermediate cycle values
    interp_cycles = round(linspace(cycles(i), cycles(i+1), num_new_points + 2))'; 
    interp_cycles = unique(interp_cycles, 'stable'); % Remove duplicates
    
    % Store new cycles (excluding last to avoid duplication)
    new_cycles = [new_cycles; interp_cycles(1:end-1)];
    
    % Perform interpolation for "Capacity"
    interp_capacity = interp1([cycles(i), cycles(i+1)], [capacity(i), capacity(i+1)], interp_cycles, 'linear');
    
    interpolated_capacity = [interpolated_capacity; interp_capacity(1:end-1)]; % Store interpolated values
end

% Append the last original row
new_cycles = [new_cycles; cycles(end)];
interpolated_capacity = [interpolated_capacity; capacity(end)];

% Create a new table with interpolated values
new_data = table(new_cycles, interpolated_capacity, 'VariableNames', {'Cycle', 'Capacity'});

% Save to a new CSV file
writetable(new_data, 'CapacityInterpolation10.csv');

disp('Interpolation complete! File saved as CapacityInterpolation10.csv');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Read the CSV file
data = readtable('../../CapacityConvert\Capacity_11.xlsx');

% Extract Cycle column (Ensure it's numeric)
cycles = data.Cycle;
cycles = double(cycles); % Convert to numeric if necessary

% Define the number of new points to insert between each cycle step
num_new_points = 10;

% Get the "Capacity" column
capacity = data.Capacity;
capacity = double(capacity); % Ensure numeric

% Initialize new data storage
new_cycles = [];
interpolated_capacity = [];

% Loop through cycle steps and interpolate "Capacity"
for i = 1:length(cycles)-1
    % Skip duplicate cycles or NaN/Inf values
    if cycles(i) == cycles(i+1) || isnan(cycles(i)) || isnan(cycles(i+1)) || isinf(cycles(i)) || isinf(cycles(i+1))
        continue;
    end
    
    % Generate 10 intermediate cycle values
    interp_cycles = round(linspace(cycles(i), cycles(i+1), num_new_points + 2))'; 
    interp_cycles = unique(interp_cycles, 'stable'); % Remove duplicates
    
    % Store new cycles (excluding last to avoid duplication)
    new_cycles = [new_cycles; interp_cycles(1:end-1)];
    
    % Perform interpolation for "Capacity"
    interp_capacity = interp1([cycles(i), cycles(i+1)], [capacity(i), capacity(i+1)], interp_cycles, 'linear');
    
    interpolated_capacity = [interpolated_capacity; interp_capacity(1:end-1)]; % Store interpolated values
end

% Append the last original row
new_cycles = [new_cycles; cycles(end)];
interpolated_capacity = [interpolated_capacity; capacity(end)];

% Create a new table with interpolated values
new_data = table(new_cycles, interpolated_capacity, 'VariableNames', {'Cycle', 'Capacity'});

% Save to a new CSV file
writetable(new_data, 'CapacityInterpolation11.csv');

disp('Interpolation complete! File saved as CapacityInterpolation11.csv');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Read the CSV file
data = readtable('../../CapacityConvert\Capacity_12.xlsx');

% Extract Cycle column (Ensure it's numeric)
cycles = data.Cycle;
cycles = double(cycles); % Convert to numeric if necessary

% Define the number of new points to insert between each cycle step
num_new_points = 10;

% Get the "Capacity" column
capacity = data.Capacity;
capacity = double(capacity); % Ensure numeric

% Initialize new data storage
new_cycles = [];
interpolated_capacity = [];

% Loop through cycle steps and interpolate "Capacity"
for i = 1:length(cycles)-1
    % Skip duplicate cycles or NaN/Inf values
    if cycles(i) == cycles(i+1) || isnan(cycles(i)) || isnan(cycles(i+1)) || isinf(cycles(i)) || isinf(cycles(i+1))
        continue;
    end
    
    % Generate 10 intermediate cycle values
    interp_cycles = round(linspace(cycles(i), cycles(i+1), num_new_points + 2))'; 
    interp_cycles = unique(interp_cycles, 'stable'); % Remove duplicates
    
    % Store new cycles (excluding last to avoid duplication)
    new_cycles = [new_cycles; interp_cycles(1:end-1)];
    
    % Perform interpolation for "Capacity"
    interp_capacity = interp1([cycles(i), cycles(i+1)], [capacity(i), capacity(i+1)], interp_cycles, 'linear');
    
    interpolated_capacity = [interpolated_capacity; interp_capacity(1:end-1)]; % Store interpolated values
end

% Append the last original row
new_cycles = [new_cycles; cycles(end)];
interpolated_capacity = [interpolated_capacity; capacity(end)];

% Create a new table with interpolated values
new_data = table(new_cycles, interpolated_capacity, 'VariableNames', {'Cycle', 'Capacity'});

% Save to a new CSV file
writetable(new_data, 'CapacityInterpolation12.csv');

disp('Interpolation complete! File saved as CapacityInterpolation12.csv');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Read the CSV file
data = readtable('../../CapacityConvert\Capacity_13.xlsx');

% Extract Cycle column (Ensure it's numeric)
cycles = data.Cycle;
cycles = double(cycles); % Convert to numeric if necessary

% Define the number of new points to insert between each cycle step
num_new_points = 10;

% Get the "Capacity" column
capacity = data.Capacity;
capacity = double(capacity); % Ensure numeric

% Initialize new data storage
new_cycles = [];
interpolated_capacity = [];

% Loop through cycle steps and interpolate "Capacity"
for i = 1:length(cycles)-1
    % Skip duplicate cycles or NaN/Inf values
    if cycles(i) == cycles(i+1) || isnan(cycles(i)) || isnan(cycles(i+1)) || isinf(cycles(i)) || isinf(cycles(i+1))
        continue;
    end
    
    % Generate 10 intermediate cycle values
    interp_cycles = round(linspace(cycles(i), cycles(i+1), num_new_points + 2))'; 
    interp_cycles = unique(interp_cycles, 'stable'); % Remove duplicates
    
    % Store new cycles (excluding last to avoid duplication)
    new_cycles = [new_cycles; interp_cycles(1:end-1)];
    
    % Perform interpolation for "Capacity"
    interp_capacity = interp1([cycles(i), cycles(i+1)], [capacity(i), capacity(i+1)], interp_cycles, 'linear');
    
    interpolated_capacity = [interpolated_capacity; interp_capacity(1:end-1)]; % Store interpolated values
end

% Append the last original row
new_cycles = [new_cycles; cycles(end)];
interpolated_capacity = [interpolated_capacity; capacity(end)];

% Create a new table with interpolated values
new_data = table(new_cycles, interpolated_capacity, 'VariableNames', {'Cycle', 'Capacity'});

% Save to a new CSV file
writetable(new_data, 'CapacityInterpolation13.csv');

disp('Interpolation complete! File saved as CapacityInterpolation13.csv');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Read the CSV file
data = readtable('../../CapacityConvert\Capacity_14.xlsx');

% Extract Cycle column (Ensure it's numeric)
cycles = data.Cycle;
cycles = double(cycles); % Convert to numeric if necessary

% Define the number of new points to insert between each cycle step
num_new_points = 10;

% Get the "Capacity" column
capacity = data.Capacity;
capacity = double(capacity); % Ensure numeric

% Initialize new data storage
new_cycles = [];
interpolated_capacity = [];

% Loop through cycle steps and interpolate "Capacity"
for i = 1:length(cycles)-1
    % Skip duplicate cycles or NaN/Inf values
    if cycles(i) == cycles(i+1) || isnan(cycles(i)) || isnan(cycles(i+1)) || isinf(cycles(i)) || isinf(cycles(i+1))
        continue;
    end
    
    % Generate 10 intermediate cycle values
    interp_cycles = round(linspace(cycles(i), cycles(i+1), num_new_points + 2))'; 
    interp_cycles = unique(interp_cycles, 'stable'); % Remove duplicates
    
    % Store new cycles (excluding last to avoid duplication)
    new_cycles = [new_cycles; interp_cycles(1:end-1)];
    
    % Perform interpolation for "Capacity"
    interp_capacity = interp1([cycles(i), cycles(i+1)], [capacity(i), capacity(i+1)], interp_cycles, 'linear');
    
    interpolated_capacity = [interpolated_capacity; interp_capacity(1:end-1)]; % Store interpolated values
end

% Append the last original row
new_cycles = [new_cycles; cycles(end)];
interpolated_capacity = [interpolated_capacity; capacity(end)];

% Create a new table with interpolated values
new_data = table(new_cycles, interpolated_capacity, 'VariableNames', {'Cycle', 'Capacity'});

% Save to a new CSV file
writetable(new_data, 'CapacityInterpolation14.csv');

disp('Interpolation complete! File saved as CapacityInterpolation14.csv');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Read the CSV file
data = readtable('../../CapacityConvert\Capacity_15.xlsx');

% Extract Cycle column (Ensure it's numeric)
cycles = data.Cycle;
cycles = double(cycles); % Convert to numeric if necessary

% Define the number of new points to insert between each cycle step
num_new_points = 10;

% Get the "Capacity" column
capacity = data.Capacity;
capacity = double(capacity); % Ensure numeric

% Initialize new data storage
new_cycles = [];
interpolated_capacity = [];

% Loop through cycle steps and interpolate "Capacity"
for i = 1:length(cycles)-1
    % Skip duplicate cycles or NaN/Inf values
    if cycles(i) == cycles(i+1) || isnan(cycles(i)) || isnan(cycles(i+1)) || isinf(cycles(i)) || isinf(cycles(i+1))
        continue;
    end
    
    % Generate 10 intermediate cycle values
    interp_cycles = round(linspace(cycles(i), cycles(i+1), num_new_points + 2))'; 
    interp_cycles = unique(interp_cycles, 'stable'); % Remove duplicates
    
    % Store new cycles (excluding last to avoid duplication)
    new_cycles = [new_cycles; interp_cycles(1:end-1)];
    
    % Perform interpolation for "Capacity"
    interp_capacity = interp1([cycles(i), cycles(i+1)], [capacity(i), capacity(i+1)], interp_cycles, 'linear');
    
    interpolated_capacity = [interpolated_capacity; interp_capacity(1:end-1)]; % Store interpolated values
end

% Append the last original row
new_cycles = [new_cycles; cycles(end)];
interpolated_capacity = [interpolated_capacity; capacity(end)];

% Create a new table with interpolated values
new_data = table(new_cycles, interpolated_capacity, 'VariableNames', {'Cycle', 'Capacity'});

% Save to a new CSV file
writetable(new_data, 'CapacityInterpolation15.csv');

disp('Interpolation complete! File saved as CapacityInterpolation15.csv');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
