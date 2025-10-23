function isValid = isTriangle(sides)
% function is valid will checl if stated conditions for a valid triangle
% are confirmed
    if any(sides <= 0)
        % Ensure all sides are of a positive value
        error('All sides must be positive values');
        %shows that sides must be positive
    end
    % Check if the input has 3 elements
    if numel(sides) ~= 3
        error('Input must have 3 elements')
        %invalid input by user
        %shows that it is not a triangle and displays message
    end
    
    sides = sort(sides); 
    %sorts 3 valid inputs to find longest side
    
    isValid = sides(1) + sides(2) > sides(3); 
%checks if  this is valid triangle
end