function importfile
% Read the data from selected file
filename = 'isok_data_6803.csv'; % Name of file to import
opts = detectImportOptions(filename); % Detect variable names and types
data = readtable(filename,opts); % reads the data into a table

% Convert each column to a separate variable
for i = 1:width(data)
    assignin('caller', data.Properties.VariableNames{i}, data{:, i});
end