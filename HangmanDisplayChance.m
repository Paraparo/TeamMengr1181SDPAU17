%HangMan - Eng1181TeamMAU17

%%
%Display Script

%chance Counter
chance = 

chance6 = imread('');
chance5 = imread('');
chance4 = imread('');
chance3 = imread('');
chance2 = imread('');
chance1 = imread('');
Gameover = imread('');

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
