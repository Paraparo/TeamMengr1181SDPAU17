loss = 6;
wordChoice = randi([1,10], 1)
user = 0;
str=fileread('words.txt')
C=strsplit(str)
word=C{wordChoice}
usedChars = '';
while user < loss
    userInput = input('\nEnter a character (lower case): ', 's');
    newStr = strrep(word, userInput, '');
    usedChars = userInput
    newStrLength = length(newStr);
    origStrLength = length(word);
    if newStrLength < origStrLength
        word = newStr
        fprintf('\nCorrect! Guess again.\n');
        userInput;
    elseif newStrLength == origStrLength
        user = user+1;
        fprintf('\nIncorrect! You have made %1.0f incorrect guesses.\n', user);
    end
    
    if isempty(word) == 1
        break;
    end
    
end

if user == 6
    fprintf('\nYou lose\n');
else
    fprintf('\nYou win');
end
