% Read the CSV file
data = readtable('../../FeatureConvert\combinedFeatures1.csv');

% Extract CycleLabel column
CycleLabels = data.CycleLabel; % Assuming the column name is 'CycleLabel'

% Extract numerical cycle values from CycleLabel
cycles = zeros(length(CycleLabels), 1); % Preallocate array
for i = 1:length(CycleLabels)
    cycles(i) = sscanf(CycleLabels{i}, 'c%fcyc'); % Extract numeric part
end

% Define the number of new points to insert between each cycle step
num_new_points = 10;

% Get column names (excluding CycleLabel)
column_names = data.Properties.VariableNames;
column_names(1) = []; % Remove 'CycleLabel'

% Initialize new data storage
new_cycles = [];
interpolated_data = [];

% Loop through cycle steps and interpolate all columns
for i = 1:length(cycles)-1
    % Generate 10 intermediate cycle values and round them
    interp_cycles = round(linspace(cycles(i), cycles(i+1), num_new_points + 2))'; 
    
    % Remove duplicate cycle values (rounding may create duplicates)
    interp_cycles = unique(interp_cycles, 'stable');
    
    % Store new cycles (excluding last to avoid duplication)
    new_cycles = [new_cycles; interp_cycles(1:end-1)];
    
    % Interpolate all other columns
    new_values = [];
    for j = 1:length(column_names)
        column_data = data{:, column_names{j}}; % Extract column values
        interp_column = interp1([cycles(i), cycles(i+1)], [column_data(i), column_data(i+1)], interp_cycles, 'linear');
        new_values = [new_values, interp_column(1:end-1)]; % Store interpolated values
    end
    
    interpolated_data = [interpolated_data; new_values];
end

% Append the last original row
new_cycles = [new_cycles; cycles(end)];
last_values = data{end, column_names}; % Get last row values
interpolated_data = [interpolated_data; last_values];

% Create a new table with interpolated values
new_data = array2table([new_cycles, interpolated_data], 'VariableNames', ['Cycle', column_names]);

% Save to a new CSV file
writetable(new_data, 'CombinedFeaturesInterpolation1.csv');

disp('Interpolation complete! File saved as CombinedFeaturesInterpolation1.csv');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Read the CSV file
data = readtable('../../FeatureConvert\combinedFeatures2.csv');

% Extract CycleLabel column
CycleLabels = data.CycleLabel; % Assuming the column name is 'CycleLabel'

% Extract numerical cycle values from CycleLabel
cycles = zeros(length(CycleLabels), 1); % Preallocate array
for i = 1:length(CycleLabels)
    cycles(i) = sscanf(CycleLabels{i}, 'c%fcyc'); % Extract numeric part
end

% Define the number of new points to insert between each cycle step
num_new_points = 10;

% Get column names (excluding CycleLabel)
column_names = data.Properties.VariableNames;
column_names(1) = []; % Remove 'CycleLabel'

% Initialize new data storage
new_cycles = [];
interpolated_data = [];

% Loop through cycle steps and interpolate all columns
for i = 1:length(cycles)-1
    % Generate 10 intermediate cycle values and round them
    interp_cycles = round(linspace(cycles(i), cycles(i+1), num_new_points + 2))'; 
    
    % Remove duplicate cycle values (rounding may create duplicates)
    interp_cycles = unique(interp_cycles, 'stable');
    
    % Store new cycles (excluding last to avoid duplication)
    new_cycles = [new_cycles; interp_cycles(1:end-1)];
    
    % Interpolate all other columns
    new_values = [];
    for j = 1:length(column_names)
        column_data = data{:, column_names{j}}; % Extract column values
        interp_column = interp1([cycles(i), cycles(i+1)], [column_data(i), column_data(i+1)], interp_cycles, 'linear');
        new_values = [new_values, interp_column(1:end-1)]; % Store interpolated values
    end
    
    interpolated_data = [interpolated_data; new_values];
end

% Append the last original row
new_cycles = [new_cycles; cycles(end)];
last_values = data{end, column_names}; % Get last row values
interpolated_data = [interpolated_data; last_values];

% Create a new table with interpolated values
new_data = array2table([new_cycles, interpolated_data], 'VariableNames', ['Cycle', column_names]);

% Save to a new CSV file
writetable(new_data, 'CombinedFeaturesInterpolation2.csv');

disp('Interpolation complete! File saved as CombinedFeaturesInterpolation2.csv');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Read the CSV file
data = readtable('../../FeatureConvert\combinedFeatures3.csv');

% Extract CycleLabel column
CycleLabels = data.CycleLabel; % Assuming the column name is 'CycleLabel'

% Extract numerical cycle values from CycleLabel
cycles = zeros(length(CycleLabels), 1); % Preallocate array
for i = 1:length(CycleLabels)
    cycles(i) = sscanf(CycleLabels{i}, 'c%fcyc'); % Extract numeric part
end

% Define the number of new points to insert between each cycle step
num_new_points = 10;

% Get column names (excluding CycleLabel)
column_names = data.Properties.VariableNames;
column_names(1) = []; % Remove 'CycleLabel'

% Initialize new data storage
new_cycles = [];
interpolated_data = [];

% Loop through cycle steps and interpolate all columns
for i = 1:length(cycles)-1
    % Generate 10 intermediate cycle values and round them
    interp_cycles = round(linspace(cycles(i), cycles(i+1), num_new_points + 2))'; 
    
    % Remove duplicate cycle values (rounding may create duplicates)
    interp_cycles = unique(interp_cycles, 'stable');
    
    % Store new cycles (excluding last to avoid duplication)
    new_cycles = [new_cycles; interp_cycles(1:end-1)];
    
    % Interpolate all other columns
    new_values = [];
    for j = 1:length(column_names)
        column_data = data{:, column_names{j}}; % Extract column values
        interp_column = interp1([cycles(i), cycles(i+1)], [column_data(i), column_data(i+1)], interp_cycles, 'linear');
        new_values = [new_values, interp_column(1:end-1)]; % Store interpolated values
    end
    
    interpolated_data = [interpolated_data; new_values];
end

% Append the last original row
new_cycles = [new_cycles; cycles(end)];
last_values = data{end, column_names}; % Get last row values
interpolated_data = [interpolated_data; last_values];

% Create a new table with interpolated values
new_data = array2table([new_cycles, interpolated_data], 'VariableNames', ['Cycle', column_names]);

% Save to a new CSV file
writetable(new_data, 'CombinedFeaturesInterpolation3.csv');

disp('Interpolation complete! File saved as CombinedFeaturesInterpolation3.csv');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Read the CSV file
data = readtable('../../FeatureConvert\combinedFeatures4.csv');

% Extract CycleLabel column
CycleLabels = data.CycleLabel; % Assuming the column name is 'CycleLabel'

% Extract numerical cycle values from CycleLabel
cycles = zeros(length(CycleLabels), 1); % Preallocate array
for i = 1:length(CycleLabels)
    cycles(i) = sscanf(CycleLabels{i}, 'c%fcyc'); % Extract numeric part
end

% Define the number of new points to insert between each cycle step
num_new_points = 10;

% Get column names (excluding CycleLabel)
column_names = data.Properties.VariableNames;
column_names(1) = []; % Remove 'CycleLabel'

% Initialize new data storage
new_cycles = [];
interpolated_data = [];

% Loop through cycle steps and interpolate all columns
for i = 1:length(cycles)-1
    % Generate 10 intermediate cycle values and round them
    interp_cycles = round(linspace(cycles(i), cycles(i+1), num_new_points + 2))'; 
    
    % Remove duplicate cycle values (rounding may create duplicates)
    interp_cycles = unique(interp_cycles, 'stable');
    
    % Store new cycles (excluding last to avoid duplication)
    new_cycles = [new_cycles; interp_cycles(1:end-1)];
    
    % Interpolate all other columns
    new_values = [];
    for j = 1:length(column_names)
        column_data = data{:, column_names{j}}; % Extract column values
        interp_column = interp1([cycles(i), cycles(i+1)], [column_data(i), column_data(i+1)], interp_cycles, 'linear');
        new_values = [new_values, interp_column(1:end-1)]; % Store interpolated values
    end
    
    interpolated_data = [interpolated_data; new_values];
end

% Append the last original row
new_cycles = [new_cycles; cycles(end)];
last_values = data{end, column_names}; % Get last row values
interpolated_data = [interpolated_data; last_values];

% Create a new table with interpolated values
new_data = array2table([new_cycles, interpolated_data], 'VariableNames', ['Cycle', column_names]);

% Save to a new CSV file
writetable(new_data, 'CombinedFeaturesInterpolation4.csv');

disp('Interpolation complete! File saved as CombinedFeaturesInterpolation4.csv');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Read the CSV file
data = readtable('../../FeatureConvert\combinedFeatures5.csv');

% Extract CycleLabel column
CycleLabels = data.CycleLabel; % Assuming the column name is 'CycleLabel'

% Extract numerical cycle values from CycleLabel
cycles = zeros(length(CycleLabels), 1); % Preallocate array
for i = 1:length(CycleLabels)
    cycles(i) = sscanf(CycleLabels{i}, 'c%fcyc'); % Extract numeric part
end

% Define the number of new points to insert between each cycle step
num_new_points = 10;

% Get column names (excluding CycleLabel)
column_names = data.Properties.VariableNames;
column_names(1) = []; % Remove 'CycleLabel'

% Initialize new data storage
new_cycles = [];
interpolated_data = [];

% Loop through cycle steps and interpolate all columns
for i = 1:length(cycles)-1
    % Generate 10 intermediate cycle values and round them
    interp_cycles = round(linspace(cycles(i), cycles(i+1), num_new_points + 2))'; 
    
    % Remove duplicate cycle values (rounding may create duplicates)
    interp_cycles = unique(interp_cycles, 'stable');
    
    % Store new cycles (excluding last to avoid duplication)
    new_cycles = [new_cycles; interp_cycles(1:end-1)];
    
    % Interpolate all other columns
    new_values = [];
    for j = 1:length(column_names)
        column_data = data{:, column_names{j}}; % Extract column values
        interp_column = interp1([cycles(i), cycles(i+1)], [column_data(i), column_data(i+1)], interp_cycles, 'linear');
        new_values = [new_values, interp_column(1:end-1)]; % Store interpolated values
    end
    
    interpolated_data = [interpolated_data; new_values];
end

% Append the last original row
new_cycles = [new_cycles; cycles(end)];
last_values = data{end, column_names}; % Get last row values
interpolated_data = [interpolated_data; last_values];

% Create a new table with interpolated values
new_data = array2table([new_cycles, interpolated_data], 'VariableNames', ['Cycle', column_names]);

% Save to a new CSV file
writetable(new_data, 'CombinedFeaturesInterpolation5.csv');

disp('Interpolation complete! File saved as CombinedFeaturesInterpolation5.csv');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Read the CSV file
data = readtable('../../FeatureConvert\combinedFeatures6.csv');

% Extract CycleLabel column
CycleLabels = data.CycleLabel; % Assuming the column name is 'CycleLabel'

% Extract numerical cycle values from CycleLabel
cycles = zeros(length(CycleLabels), 1); % Preallocate array
for i = 1:length(CycleLabels)
    cycles(i) = sscanf(CycleLabels{i}, 'c%fcyc'); % Extract numeric part
end

% Define the number of new points to insert between each cycle step
num_new_points = 10;

% Get column names (excluding CycleLabel)
column_names = data.Properties.VariableNames;
column_names(1) = []; % Remove 'CycleLabel'

% Initialize new data storage
new_cycles = [];
interpolated_data = [];

% Loop through cycle steps and interpolate all columns
for i = 1:length(cycles)-1
    % Generate 10 intermediate cycle values and round them
    interp_cycles = round(linspace(cycles(i), cycles(i+1), num_new_points + 2))'; 
    
    % Remove duplicate cycle values (rounding may create duplicates)
    interp_cycles = unique(interp_cycles, 'stable');
    
    % Store new cycles (excluding last to avoid duplication)
    new_cycles = [new_cycles; interp_cycles(1:end-1)];
    
    % Interpolate all other columns
    new_values = [];
    for j = 1:length(column_names)
        column_data = data{:, column_names{j}}; % Extract column values
        interp_column = interp1([cycles(i), cycles(i+1)], [column_data(i), column_data(i+1)], interp_cycles, 'linear');
        new_values = [new_values, interp_column(1:end-1)]; % Store interpolated values
    end
    
    interpolated_data = [interpolated_data; new_values];
end

% Append the last original row
new_cycles = [new_cycles; cycles(end)];
last_values = data{end, column_names}; % Get last row values
interpolated_data = [interpolated_data; last_values];

% Create a new table with interpolated values
new_data = array2table([new_cycles, interpolated_data], 'VariableNames', ['Cycle', column_names]);

% Save to a new CSV file
writetable(new_data, 'CombinedFeaturesInterpolation6.csv');

disp('Interpolation complete! File saved as CombinedFeaturesInterpolation6.csv');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Read the CSV file
data = readtable('../../FeatureConvert\combinedFeatures7.csv');

% Extract CycleLabel column
CycleLabels = data.CycleLabel; % Assuming the column name is 'CycleLabel'

% Extract numerical cycle values from CycleLabel
cycles = zeros(length(CycleLabels), 1); % Preallocate array
for i = 1:length(CycleLabels)
    cycles(i) = sscanf(CycleLabels{i}, 'c%fcyc'); % Extract numeric part
end

% Define the number of new points to insert between each cycle step
num_new_points = 10;

% Get column names (excluding CycleLabel)
column_names = data.Properties.VariableNames;
column_names(1) = []; % Remove 'CycleLabel'

% Initialize new data storage
new_cycles = [];
interpolated_data = [];

% Loop through cycle steps and interpolate all columns
for i = 1:length(cycles)-1
    % Generate 10 intermediate cycle values and round them
    interp_cycles = round(linspace(cycles(i), cycles(i+1), num_new_points + 2))'; 
    
    % Remove duplicate cycle values (rounding may create duplicates)
    interp_cycles = unique(interp_cycles, 'stable');
    
    % Store new cycles (excluding last to avoid duplication)
    new_cycles = [new_cycles; interp_cycles(1:end-1)];
    
    % Interpolate all other columns
    new_values = [];
    for j = 1:length(column_names)
        column_data = data{:, column_names{j}}; % Extract column values
        interp_column = interp1([cycles(i), cycles(i+1)], [column_data(i), column_data(i+1)], interp_cycles, 'linear');
        new_values = [new_values, interp_column(1:end-1)]; % Store interpolated values
    end
    
    interpolated_data = [interpolated_data; new_values];
end

% Append the last original row
new_cycles = [new_cycles; cycles(end)];
last_values = data{end, column_names}; % Get last row values
interpolated_data = [interpolated_data; last_values];

% Create a new table with interpolated values
new_data = array2table([new_cycles, interpolated_data], 'VariableNames', ['Cycle', column_names]);

% Save to a new CSV file
writetable(new_data, 'CombinedFeaturesInterpolation7.csv');

disp('Interpolation complete! File saved as CombinedFeaturesInterpolation7.csv');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Read the CSV file
data = readtable('../../FeatureConvert\combinedFeatures8.csv');

% Extract CycleLabel column
CycleLabels = data.CycleLabel; % Assuming the column name is 'CycleLabel'

% Extract numerical cycle values from CycleLabel
cycles = zeros(length(CycleLabels), 1); % Preallocate array
for i = 1:length(CycleLabels)
    cycles(i) = sscanf(CycleLabels{i}, 'c%fcyc'); % Extract numeric part
end

% Define the number of new points to insert between each cycle step
num_new_points = 10;

% Get column names (excluding CycleLabel)
column_names = data.Properties.VariableNames;
column_names(1) = []; % Remove 'CycleLabel'

% Initialize new data storage
new_cycles = [];
interpolated_data = [];

% Loop through cycle steps and interpolate all columns
for i = 1:length(cycles)-1
    % Generate 10 intermediate cycle values and round them
    interp_cycles = round(linspace(cycles(i), cycles(i+1), num_new_points + 2))'; 
    
    % Remove duplicate cycle values (rounding may create duplicates)
    interp_cycles = unique(interp_cycles, 'stable');
    
    % Store new cycles (excluding last to avoid duplication)
    new_cycles = [new_cycles; interp_cycles(1:end-1)];
    
    % Interpolate all other columns
    new_values = [];
    for j = 1:length(column_names)
        column_data = data{:, column_names{j}}; % Extract column values
        interp_column = interp1([cycles(i), cycles(i+1)], [column_data(i), column_data(i+1)], interp_cycles, 'linear');
        new_values = [new_values, interp_column(1:end-1)]; % Store interpolated values
    end
    
    interpolated_data = [interpolated_data; new_values];
end

% Append the last original row
new_cycles = [new_cycles; cycles(end)];
last_values = data{end, column_names}; % Get last row values
interpolated_data = [interpolated_data; last_values];

% Create a new table with interpolated values
new_data = array2table([new_cycles, interpolated_data], 'VariableNames', ['Cycle', column_names]);

% Save to a new CSV file
writetable(new_data, 'CombinedFeaturesInterpolation8.csv');

disp('Interpolation complete! File saved as CombinedFeaturesInterpolation8.csv');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Read the CSV file
data = readtable('../../FeatureConvert\combinedFeatures9.csv');

% Extract CycleLabel column
CycleLabels = data.CycleLabel; % Assuming the column name is 'CycleLabel'

% Extract numerical cycle values from CycleLabel
cycles = zeros(length(CycleLabels), 1); % Preallocate array
for i = 1:length(CycleLabels)
    cycles(i) = sscanf(CycleLabels{i}, 'c%fcyc'); % Extract numeric part
end

% Define the number of new points to insert between each cycle step
num_new_points = 10;

% Get column names (excluding CycleLabel)
column_names = data.Properties.VariableNames;
column_names(1) = []; % Remove 'CycleLabel'

% Initialize new data storage
new_cycles = [];
interpolated_data = [];

% Loop through cycle steps and interpolate all columns
for i = 1:length(cycles)-1
    % Generate 10 intermediate cycle values and round them
    interp_cycles = round(linspace(cycles(i), cycles(i+1), num_new_points + 2))'; 
    
    % Remove duplicate cycle values (rounding may create duplicates)
    interp_cycles = unique(interp_cycles, 'stable');
    
    % Store new cycles (excluding last to avoid duplication)
    new_cycles = [new_cycles; interp_cycles(1:end-1)];
    
    % Interpolate all other columns
    new_values = [];
    for j = 1:length(column_names)
        column_data = data{:, column_names{j}}; % Extract column values
        interp_column = interp1([cycles(i), cycles(i+1)], [column_data(i), column_data(i+1)], interp_cycles, 'linear');
        new_values = [new_values, interp_column(1:end-1)]; % Store interpolated values
    end
    
    interpolated_data = [interpolated_data; new_values];
end

% Append the last original row
new_cycles = [new_cycles; cycles(end)];
last_values = data{end, column_names}; % Get last row values
interpolated_data = [interpolated_data; last_values];

% Create a new table with interpolated values
new_data = array2table([new_cycles, interpolated_data], 'VariableNames', ['Cycle', column_names]);

% Save to a new CSV file
writetable(new_data, 'CombinedFeaturesInterpolation9.csv');

disp('Interpolation complete! File saved as CombinedFeaturesInterpolation9.csv');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Read the CSV file
data = readtable('../../FeatureConvert\combinedFeatures10.csv');

% Extract CycleLabel column
CycleLabels = data.CycleLabel; % Assuming the column name is 'CycleLabel'

% Extract numerical cycle values from CycleLabel
cycles = zeros(length(CycleLabels), 1); % Preallocate array
for i = 1:length(CycleLabels)
    cycles(i) = sscanf(CycleLabels{i}, 'c%fcyc'); % Extract numeric part
end

% Define the number of new points to insert between each cycle step
num_new_points = 10;

% Get column names (excluding CycleLabel)
column_names = data.Properties.VariableNames;
column_names(1) = []; % Remove 'CycleLabel'

% Initialize new data storage
new_cycles = [];
interpolated_data = [];

% Loop through cycle steps and interpolate all columns
for i = 1:length(cycles)-1
    % Generate 10 intermediate cycle values and round them
    interp_cycles = round(linspace(cycles(i), cycles(i+1), num_new_points + 2))'; 
    
    % Remove duplicate cycle values (rounding may create duplicates)
    interp_cycles = unique(interp_cycles, 'stable');
    
    % Store new cycles (excluding last to avoid duplication)
    new_cycles = [new_cycles; interp_cycles(1:end-1)];
    
    % Interpolate all other columns
    new_values = [];
    for j = 1:length(column_names)
        column_data = data{:, column_names{j}}; % Extract column values
        interp_column = interp1([cycles(i), cycles(i+1)], [column_data(i), column_data(i+1)], interp_cycles, 'linear');
        new_values = [new_values, interp_column(1:end-1)]; % Store interpolated values
    end
    
    interpolated_data = [interpolated_data; new_values];
end

% Append the last original row
new_cycles = [new_cycles; cycles(end)];
last_values = data{end, column_names}; % Get last row values
interpolated_data = [interpolated_data; last_values];

% Create a new table with interpolated values
new_data = array2table([new_cycles, interpolated_data], 'VariableNames', ['Cycle', column_names]);

% Save to a new CSV file
writetable(new_data, 'CombinedFeaturesInterpolation10.csv');

disp('Interpolation complete! File saved as CombinedFeaturesInterpolation10.csv');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Read the CSV file
data = readtable('../../FeatureConvert\combinedFeatures11.csv');

% Extract CycleLabel column
CycleLabels = data.CycleLabel; % Assuming the column name is 'CycleLabel'

% Extract numerical cycle values from CycleLabel
cycles = zeros(length(CycleLabels), 1); % Preallocate array
for i = 1:length(CycleLabels)
    cycles(i) = sscanf(CycleLabels{i}, 'c%fcyc'); % Extract numeric part
end

% Define the number of new points to insert between each cycle step
num_new_points = 10;

% Get column names (excluding CycleLabel)
column_names = data.Properties.VariableNames;
column_names(1) = []; % Remove 'CycleLabel'

% Initialize new data storage
new_cycles = [];
interpolated_data = [];

% Loop through cycle steps and interpolate all columns
for i = 1:length(cycles)-1
    % Generate 10 intermediate cycle values and round them
    interp_cycles = round(linspace(cycles(i), cycles(i+1), num_new_points + 2))'; 
    
    % Remove duplicate cycle values (rounding may create duplicates)
    interp_cycles = unique(interp_cycles, 'stable');
    
    % Store new cycles (excluding last to avoid duplication)
    new_cycles = [new_cycles; interp_cycles(1:end-1)];
    
    % Interpolate all other columns
    new_values = [];
    for j = 1:length(column_names)
        column_data = data{:, column_names{j}}; % Extract column values
        interp_column = interp1([cycles(i), cycles(i+1)], [column_data(i), column_data(i+1)], interp_cycles, 'linear');
        new_values = [new_values, interp_column(1:end-1)]; % Store interpolated values
    end
    
    interpolated_data = [interpolated_data; new_values];
end

% Append the last original row
new_cycles = [new_cycles; cycles(end)];
last_values = data{end, column_names}; % Get last row values
interpolated_data = [interpolated_data; last_values];

% Create a new table with interpolated values
new_data = array2table([new_cycles, interpolated_data], 'VariableNames', ['Cycle', column_names]);

% Save to a new CSV file
writetable(new_data, 'CombinedFeaturesInterpolation11.csv');

disp('Interpolation complete! File saved as CombinedFeaturesInterpolation11.csv');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Read the CSV file
data = readtable('../../FeatureConvert\combinedFeatures12.csv');

% Extract CycleLabel column
CycleLabels = data.CycleLabel; % Assuming the column name is 'CycleLabel'

% Extract numerical cycle values from CycleLabel
cycles = zeros(length(CycleLabels), 1); % Preallocate array
for i = 1:length(CycleLabels)
    cycles(i) = sscanf(CycleLabels{i}, 'c%fcyc'); % Extract numeric part
end

% Define the number of new points to insert between each cycle step
num_new_points = 10;

% Get column names (excluding CycleLabel)
column_names = data.Properties.VariableNames;
column_names(1) = []; % Remove 'CycleLabel'

% Initialize new data storage
new_cycles = [];
interpolated_data = [];

% Loop through cycle steps and interpolate all columns
for i = 1:length(cycles)-1
    % Generate 10 intermediate cycle values and round them
    interp_cycles = round(linspace(cycles(i), cycles(i+1), num_new_points + 2))'; 
    
    % Remove duplicate cycle values (rounding may create duplicates)
    interp_cycles = unique(interp_cycles, 'stable');
    
    % Store new cycles (excluding last to avoid duplication)
    new_cycles = [new_cycles; interp_cycles(1:end-1)];
    
    % Interpolate all other columns
    new_values = [];
    for j = 1:length(column_names)
        column_data = data{:, column_names{j}}; % Extract column values
        interp_column = interp1([cycles(i), cycles(i+1)], [column_data(i), column_data(i+1)], interp_cycles, 'linear');
        new_values = [new_values, interp_column(1:end-1)]; % Store interpolated values
    end
    
    interpolated_data = [interpolated_data; new_values];
end

% Append the last original row
new_cycles = [new_cycles; cycles(end)];
last_values = data{end, column_names}; % Get last row values
interpolated_data = [interpolated_data; last_values];

% Create a new table with interpolated values
new_data = array2table([new_cycles, interpolated_data], 'VariableNames', ['Cycle', column_names]);

% Save to a new CSV file
writetable(new_data, 'CombinedFeaturesInterpolation12.csv');

disp('Interpolation complete! File saved as CombinedFeaturesInterpolation12.csv');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Read the CSV file
data = readtable('../../FeatureConvert\combinedFeatures13.csv');

% Extract CycleLabel column
CycleLabels = data.CycleLabel; % Assuming the column name is 'CycleLabel'

% Extract numerical cycle values from CycleLabel
cycles = zeros(length(CycleLabels), 1); % Preallocate array
for i = 1:length(CycleLabels)
    cycles(i) = sscanf(CycleLabels{i}, 'c%fcyc'); % Extract numeric part
end

% Define the number of new points to insert between each cycle step
num_new_points = 10;

% Get column names (excluding CycleLabel)
column_names = data.Properties.VariableNames;
column_names(1) = []; % Remove 'CycleLabel'

% Initialize new data storage
new_cycles = [];
interpolated_data = [];

% Loop through cycle steps and interpolate all columns
for i = 1:length(cycles)-1
    % Generate 10 intermediate cycle values and round them
    interp_cycles = round(linspace(cycles(i), cycles(i+1), num_new_points + 2))'; 
    
    % Remove duplicate cycle values (rounding may create duplicates)
    interp_cycles = unique(interp_cycles, 'stable');
    
    % Store new cycles (excluding last to avoid duplication)
    new_cycles = [new_cycles; interp_cycles(1:end-1)];
    
    % Interpolate all other columns
    new_values = [];
    for j = 1:length(column_names)
        column_data = data{:, column_names{j}}; % Extract column values
        interp_column = interp1([cycles(i), cycles(i+1)], [column_data(i), column_data(i+1)], interp_cycles, 'linear');
        new_values = [new_values, interp_column(1:end-1)]; % Store interpolated values
    end
    
    interpolated_data = [interpolated_data; new_values];
end

% Append the last original row
new_cycles = [new_cycles; cycles(end)];
last_values = data{end, column_names}; % Get last row values
interpolated_data = [interpolated_data; last_values];

% Create a new table with interpolated values
new_data = array2table([new_cycles, interpolated_data], 'VariableNames', ['Cycle', column_names]);

% Save to a new CSV file
writetable(new_data, 'CombinedFeaturesInterpolation13.csv');

disp('Interpolation complete! File saved as CombinedFeaturesInterpolation13.csv');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Read the CSV file
data = readtable('../../FeatureConvert\combinedFeatures14.csv');

% Extract CycleLabel column
CycleLabels = data.CycleLabel; % Assuming the column name is 'CycleLabel'

% Extract numerical cycle values from CycleLabel
cycles = zeros(length(CycleLabels), 1); % Preallocate array
for i = 1:length(CycleLabels)
    cycles(i) = sscanf(CycleLabels{i}, 'c%fcyc'); % Extract numeric part
end

% Define the number of new points to insert between each cycle step
num_new_points = 10;

% Get column names (excluding CycleLabel)
column_names = data.Properties.VariableNames;
column_names(1) = []; % Remove 'CycleLabel'

% Initialize new data storage
new_cycles = [];
interpolated_data = [];

% Loop through cycle steps and interpolate all columns
for i = 1:length(cycles)-1
    % Generate 10 intermediate cycle values and round them
    interp_cycles = round(linspace(cycles(i), cycles(i+1), num_new_points + 2))'; 
    
    % Remove duplicate cycle values (rounding may create duplicates)
    interp_cycles = unique(interp_cycles, 'stable');
    
    % Store new cycles (excluding last to avoid duplication)
    new_cycles = [new_cycles; interp_cycles(1:end-1)];
    
    % Interpolate all other columns
    new_values = [];
    for j = 1:length(column_names)
        column_data = data{:, column_names{j}}; % Extract column values
        interp_column = interp1([cycles(i), cycles(i+1)], [column_data(i), column_data(i+1)], interp_cycles, 'linear');
        new_values = [new_values, interp_column(1:end-1)]; % Store interpolated values
    end
    
    interpolated_data = [interpolated_data; new_values];
end

% Append the last original row
new_cycles = [new_cycles; cycles(end)];
last_values = data{end, column_names}; % Get last row values
interpolated_data = [interpolated_data; last_values];

% Create a new table with interpolated values
new_data = array2table([new_cycles, interpolated_data], 'VariableNames', ['Cycle', column_names]);

% Save to a new CSV file
writetable(new_data, 'CombinedFeaturesInterpolation14.csv');

disp('Interpolation complete! File saved as CombinedFeaturesInterpolation14.csv');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Read the CSV file
data = readtable('../../FeatureConvert\combinedFeatures15.csv');

% Extract CycleLabel column
CycleLabels = data.CycleLabel; % Assuming the column name is 'CycleLabel'

% Extract numerical cycle values from CycleLabel
cycles = zeros(length(CycleLabels), 1); % Preallocate array
for i = 1:length(CycleLabels)
    cycles(i) = sscanf(CycleLabels{i}, 'c%fcyc'); % Extract numeric part
end

% Define the number of new points to insert between each cycle step
num_new_points = 10;

% Get column names (excluding CycleLabel)
column_names = data.Properties.VariableNames;
column_names(1) = []; % Remove 'CycleLabel'

% Initialize new data storage
new_cycles = [];
interpolated_data = [];

% Loop through cycle steps and interpolate all columns
for i = 1:length(cycles)-1
    % Generate 10 intermediate cycle values and round them
    interp_cycles = round(linspace(cycles(i), cycles(i+1), num_new_points + 2))'; 
    
    % Remove duplicate cycle values (rounding may create duplicates)
    interp_cycles = unique(interp_cycles, 'stable');
    
    % Store new cycles (excluding last to avoid duplication)
    new_cycles = [new_cycles; interp_cycles(1:end-1)];
    
    % Interpolate all other columns
    new_values = [];
    for j = 1:length(column_names)
        column_data = data{:, column_names{j}}; % Extract column values
        interp_column = interp1([cycles(i), cycles(i+1)], [column_data(i), column_data(i+1)], interp_cycles, 'linear');
        new_values = [new_values, interp_column(1:end-1)]; % Store interpolated values
    end
    
    interpolated_data = [interpolated_data; new_values];
end

% Append the last original row
new_cycles = [new_cycles; cycles(end)];
last_values = data{end, column_names}; % Get last row values
interpolated_data = [interpolated_data; last_values];

% Create a new table with interpolated values
new_data = array2table([new_cycles, interpolated_data], 'VariableNames', ['Cycle', column_names]);

% Save to a new CSV file
writetable(new_data, 'CombinedFeaturesInterpolation15.csv');

disp('Interpolation complete! File saved as CombinedFeaturesInterpolation15.csv');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
