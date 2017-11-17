A=randi([1,6], 1); %random number generated between 1 and six to represent a dice roll
B=randi([1,6], 1); %random number generated between 1 and six to represent a dice roll
C=A+B; %A and B are being added together to represent two die being rolled
under=1;
over=2;
Guess=input('\n Guess whether the two dice combined will be under or over seven(use only lower case) \n')
if Guess==under&C<7
    fprintf('\n Congrats you win! \n')
    C
elseif Guess==over&C>7
    fprintf('\n Congrats you win! \n')
    C
elseif Guess==under&C>7
    fprintf('\n Better luck next time. \n')
    C
elseif Guess==over&C<7
    fprintf('\n Better luck next time. \n')
    C
elseif (Guess==(under|over))&C==7
    fprintf('\n Better luck next time. \n')
    C
end

