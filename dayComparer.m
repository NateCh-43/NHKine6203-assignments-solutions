function dayComparer
    % Defines the subject by ID and the data for days 1 thru 3
    subjectIds = input('Enter subject IDs as a vector: ');
    day1 = input('Data for day 1 as vector: '); %ERROR: inputs must be input as vectors
    day2 = input('Data for day 2 as vector: ');
    day3 = input("Data for day 3 as vector");

    % Empty array to store the IDs of subjects that increased values
    increasedSubjects = [];

    % Loop for individual subject to compare values
    for i = 1:length(subjectIds) %checks subject IDs on if they increased D1-D2
        if day2(i) > day1(i)
            increasedSubjectsDay1to2 = [increasedSubjects; subjectIds(i)];
        elseif day3(i) > day2(i) %Same check for D2-D3
            increasedSubjectsDay2to3 = [increasedSubjects; subjectIds(i)];
        end
    end

    % Display result including subject IDs
    disp('Subjects with an increase from day 1 to 2 or 2 to 3:');
    disp(increasedSubjectsDay1to2); %Disp which subjects increased
    disp(increasedSubjectsDay2to3);