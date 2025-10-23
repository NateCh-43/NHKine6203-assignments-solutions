function displayCounter(num1, num2)
%displayCounter will display all numbers between the lower and the higher
%input
    
    lower = min(num1, num2); 
    %finds the minimum input
    higher = max(num1, num2); 
    %finds the maximum input
    
    for i = lower:higher
        disp(i);
        % Display the all of the numbers between
        %fills in numbers between the lower and the higher
    end
end