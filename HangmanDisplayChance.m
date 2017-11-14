%HangMan - Eng1181TeamMAU17

%%
%Display Script

%chance Counter
chance = 

chance6 = imread('UntitledPlaceholder 06.png');
chance5 = imread('UntitledPlaceholder 05.png);
chance4 = imread('UntitledPlaceholder 04.png');
chance3 = imread('UntitledPlaceholder 03.png');
chance2 = imread('UntitledPlaceholder 02.png');
chance1 = imread('UntitledPlaceholder 01.png');
Gameover = imread('Gameover.png');

if chance = 6
    clf
    imshow(chance6, 'Border','tight')
elseif chance = 5
    clf
    imshow(chance5, 'Border','tight')
elseif chance = 4
    clf
    imshow(chance4, 'Border','tight')
elseif chance = 3
    clf
    imshow(chance3, 'Border','tight')
elseif chance = 2
    clf
    imshow(chance2, 'Border','tight')
elseif chance = 1
    clf
    imshow(chance1, 'Border','tight')
else
    clf
    imshow(Gameover, 'Border','tight')
end
