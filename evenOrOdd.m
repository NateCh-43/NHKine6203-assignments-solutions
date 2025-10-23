function result = evenOrOdd(num1, num2)
% Check if the numbers are even or odd
% evenOrOdd takes two inputted numbers summed together are even or odd
    if mod(num1 + num2, 2) == 0
        result = 'Woo'; 
        %if number is divisible by 2 it is true so number is even
        %Woo assigned as result
    else
        result = 'Hah'; 
        %otherwise false and is odd
        %Hah will be assigned to this outcome
    end
end