A = fileread('words.txt')
loss = 0;
wordChoice = randi([1,10], 1, 10);
user = 6;
word = 'tristan';
while user > loss
    userInput = input('\nEnter char: ', 's');
    newStr = strrep(word, userInput, '');
    x = length(newStr);
    y = length(word);
    if x < y
        word = newStr
        fprintf('\nCorrect! Guess again.\n');
        userInput;
    elseif x == y
        user = user-1;
        fprintf('\nIncorrect! You have made %1.0f incorrect guesses.\n', user);
    end
    
    if isempty(word) == 1
        break;
    end
    
end
