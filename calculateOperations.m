
function [sumRes, subRes, multRes, maxRes] = calculateOperations(num1, num2)
%calculateOperations will take two numbers of the users input num1 will
%always come first
%ex calculate operations(1,2)
    sumRes = num1 + num2; %adds inputs
    %sumRes = 1 + 2 the addition of the two numbers result is 3
    subRes = num1 - num2; %subtracts inputs
    %subtracts num2 from num1 and stores the result as subRes
    multRes = num1 * num2; %multiplies inputs
    %multiples num1 and num2 and stores result as multRes
    maxRes = max(num1, num2); %finds max of 2 inputs
    %finds the greater of two inputs and stores the higher number
end