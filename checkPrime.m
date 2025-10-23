function isPrime = checkPrime(num)
%checkPrime checks input to determine if it is prime
    if num <= 1
        %input by user must be postive
        isPrime = false; 
        %if number is less than or equal to 1 it is not prime
        return;
    end
    for i = 2:sqrt(num) 
        %logic if the number's square root is divisable by 2 it is not prime
        if mod(num, i) == 0 
            %if the number is divisible by any number it means that the number is not prime
            isPrime = false;
            return;
        end 
    end
    isPrime = true; 
    %if none of the prior checks ends the script. that number is prime
end