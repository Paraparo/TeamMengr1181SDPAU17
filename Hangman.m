clc
clear
wordChoice = randi([1, 10], 1, 10);
A = fileread('words.txt');
split = strsplit(A);
C=string(A)
word=C(1:1,3)
loss = 6;
user = 0;

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
