%Joelle Nutter and Aayushi Sharma
% check in 5 October 2021
% due 12 October 2021
% Tic Tac Toe

clear all;
clc

%We start the game on a fun note, with a happy greeting to the players
%telling them who wrote the program.
disp('Welcome to Tic-Tac-Toe! Brought to you by Aayushi and Joelle.' )

%coin toss and get player names

playerA=input('Enter the name of player 1:  ', 's');
playerB=input('Enter the name of player 2:   ', 's');

disp('A coin is being tossed to decide which player goes first...')

coinToss= randi(2);
disp(coinToss);
if coinToss==1
    fprintf('%s goes first! \n \n', playerA);
    player1= playerA;
    player2=playerB;
else
    fprintf('%s goes first! \n \n', playerB);
    player1=playerB;
    player2=playerA;
end

 disp ('Press any key to proceed.')
 pause
 
 str= newline;
 disp(str)
 
%to display rules of game and welcome greeting, with a pause
 disp('The rules of Tic-Tac-Toe are simple:')
 disp( '    On our three-by three grid, take turns with your opponent')
 disp( '    to  place your assigned symbol in a square on each turn.')
 disp( '    The first player to get three of their symbols in a row,')
 disp ('    in a vertical line, or diagonally wins!')
 
 
 disp (str)
 disp ('Press any key to proceed.')
 pause

%display empty board
plot([5 5],[0 15]) 
hold on
plot ([10 10], [0 15])
hold on
plot([0 15], [5 5])
hold on
plot ([0 15], [10 10])
hold off

disp ('the board has appeared in a pop-up window.')
disp (str)

%display instructions and rules of the game, prompt first move
disp ('Out of the nine boxes on our tic tac toe ')
disp('board, numbered left to right 1-3,4-6,7-9,') 
disp( 'like one reads a book.On your turn, type the ')
disp('number of your desired box.')

%for loop to repeat each turn alternating players (in order based on coin
%toss) and doing checkwin after each turn

%counting the number of turns that have passed, capping it at nine to
%acknowledge a tie

numberturns=0;
A= [ 0 0 0
     0 0 0
     0 0 0 ];
gamewin=1;

while (numberturns < 5) && gamewin==1

%player1's move, input taken and plotted, and counted 
fprintf('To make your move, %s, ', player1)
move1=input('place a mark on box:  ');
   
Boardplot_NutterJSharmaA(move1);
hold on
numberturns = numberturns + 1;

%CHECKWIN
[A,gamewin] = Checkwin_NutterJSharmaA(move1,A, player1);

if numberturns == 5 
    break;
end

if gamewin==0
    break;
end

%player2's move, input taken, plotted, counted
fprintf('To make your move, %s, ', player2)
move2=input('place a mark on box:  ');

Boardplot2_NutterJSharmaA(move2);


%CHECKWIN
[A,gamewin] = Checkwin2_NutterJSharmaA(move2,A, player2);
if gamewin==0
    break;
end
end

%PUT THIS  (BELOW) WITHIN THE CHECKWIN AS AN ELSE STATEMENT... HELP

if gamewin==1
    disp ('Board is filled. Game has concluded in a tie.' )
else
    disp (str)
end

%would you like to play again
repeat=input('Excellent job! Would you like to play again? Type 1 for yes or 2 for no.   ');
if repeat== 1
    Nutter_ML3
else
    disp('Game concluded.')
end 



