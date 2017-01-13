% Clear figures
clf

% Import data from user input's file location
A = importdata(input('Please provide the file path for the Raw Voltage time history file:'));

% Heights of sonic anemometers in ft
heightName = {'3ft';'8ft';'13ft';'33ft';'55ft';'155ft';'245ft';'382ft';'519ft';'656ft'};
heights = [3 8 13 33 55 155 245 382 519 656];

% Ask and compute whichever units are preferred
units = input('Would you like your units in m/s or mph? ''m/s'' or ''mph''');
if (strcmp(units,'m/s'))
    [S,X,Y] = mpsconv(A);
elseif (strcmp(units,'mph'))
    [H,X,Y] = mphconv(A);
else
    fprintf('I''m afraid that''s not an option.')
end

% Clear memory allocation of A
A = [];

% Calculate resultant wind speeds and directions
R = rws(X,Y);
D = rwd(X,Y);
wsm = mean(R)';
wdm = mean(D)';

% Clear memory allocations of X and Y
X = [];
Y = [];

% Create table with wind speed and directional means by height of anemometers
meansByHeightTable = table(wsm, wdm, 'RowNames', heightName);
meansByHeightTable.Properties.VariableUnits = {units '/circ/'};
meansByHeightTable.Properties.VariableNames{'wsm'} = 'windSpeedMeans_mps';
meansByHeightTable.Properties.VariableNames{'wdm'} = 'windDirectionMean_degrees'

% Create boundary layer plot with mean wind speed and heights
boundplot(wsm,heights,units)

% Ready the output data
j = 1;
O = [];
if (strcmp(units,'m/s'))
    [m,n] = size(S);
    for i = 1:2:n
        O = [O S(:,i:i+1) R(:,j)];
        j = j+1;
    end
else
    [m,n] = size(H);
    for i = 1:2:n
        O = [O H(:,i:i+1) R(:,j)];
        j = j+1;
    end
end

% Clear memory allocations of D, H, S and R
D = [];
H = [];
S = [];
R = [];

% Ask for file path for output and write to .csv file
csvwrite(input('What .csv file would you like to save your data into? Be sure to append ''.csv'' to the end.'),O);