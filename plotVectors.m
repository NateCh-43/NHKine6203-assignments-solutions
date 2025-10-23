function plotVectors(x, y)
    % Check if the input vectors are of the same length
    if length(x) ~= length(y)
        %y must equal x
        %x does not equal y error will be displayed
        error('Vectors must same length.'); 
        %if vectors are different lengths error messasge shows
    end
    
    figure;
    %opens new window for a figure
    
    plot(x, y, '-o');
    %will plot the x and y values on the figure window 
    
    title('Plot of 2 Vectors'); %title
    xlabel('X Vector'); %name of x axis
    ylabel('Y Vector'); %name of y axis
    % Set the title and axis labels to the plot
    
end