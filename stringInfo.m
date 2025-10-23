function [lengthStr, firstChar, lastChar] = stringInfo(str) 
%stringInfo provides information about the sting
    lengthStr = length(str);... %the number of letter in the string
    firstChar = str(1);... %first character of the string
    lastChar = str(end);... %last character of the string
end