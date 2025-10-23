%
function totalAmount = calculateTotalAmount(quarter, dime, nickel, penny)
    %value of each coin will be added together and takes each and will
    %output the total dollar amount 
    valueQuarter = 25; % 25 cents each
    valueDime = 10; % 10 cents each
    valueNickel = 5; % 5 cents each
    valuePenny = 1; %1 cent each
    
    totalAmount = (quarter * valueQuarter) + ... %multply # of quarters by .25
                  (dime * valueDime) + ... % multiply # of dimes by .10
                  (nickel * valueNickel) + ... %multiply # of nickles .05
                  (penny * valuePenny); %multiply # of pennies by .01
% the sum of all 4 inputs will then be saved
end