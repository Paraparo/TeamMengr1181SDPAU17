A = fileread('words.txt')
loss = 6;
wordChoice = randi([1,10], 1, 10);
user = 0;
word = 'tristan';
while user < loss
    userInput = input('\nEnter char: ', 's');
    newStr = strrep(word, userInput, '');
    x = length(newStr);
    y = length(word);
    if x < y
        word = newStr
        fprintf('\nCorrect! Guess again.\n');
        userInput;
    elseif x == y
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