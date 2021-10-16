function [A,gamewin] = Checkwin_NutterJSharmaA(move1,A,player1)

%create a three by three matrix with zeroes, when player1 chooses a box, a
%10 is put in that spot on the matrix. When player2 chooses a box, a 1 is 
% put in that spot on the matrix. After each turn by each player the
%checkwin function runs, adding up the sum each column, the sum of each
%row, and the sum of the main diagonal, and the sum of the flipped
%diagonal. for when the sum = 30 for any of these, display "player1 wins!"
%and stop the game. when the sum = 3 for any of the sums, display "player2
%wins!" and stop the game. The stopped game should display a prompt to play
%again

 gamewin=1;
 
 %change matrix for new player 1 move
 if move1 == 1
     A= A+ [10,0,0;0,0,0;0,0,0];
 elseif move1 == 2
     A= A+ [0,10,0;0,0,0;0,0,0];
 elseif move1 ==3
     A= A+ [0,0,10;0,0,0;0,0,0];
 elseif move1 ==4
     A= A+ [0,0,0;10,0,0;0,0,0];
 elseif move1==5
     A= A+ [0,0,0;0,10,0;0,0,0];
 elseif move1==6
     A= A+ [0,0,0;0,0,10;0,0,0];
 elseif move1==7
     A= A+ [0,0,0;0,0,0;10,0,0];
 elseif move1==8
     A= A+ [0,0,0;0,0,0;0,10,0];
 else
     A= A+ [0,0,0;0,0,0;0,0,10];
 end
   

%checkwin player1 move
if     sum(A(3,:))== 30 
    fprintf('%s wins!!!', player1)
     gamewin=0;
    return;
elseif sum(A(2,:))== 30
     fprintf('%s wins!!!', player1)
    gamewin=0;
    return;
elseif sum(A(1,:))== 30
    fprintf('%s wins!!!', player1)
     gamewin=0;
    return;
elseif sum(A(:,3))== 30 
    fprintf('%s wins!!!', player1)
    gamewin=0;
    return;
elseif sum(A(:,2))== 30 
   fprintf('%s wins!!!', player1)
    gamewin=0;
    return;
elseif sum(A(:,1))== 30
    fprintf('%s wins!!!', player1)
    gamewin=0;
    return;
    
elseif sum(diag(A))== 30
     fprintf('%s wins!!!', player1)
    gamewin=0;
    return;
elseif sum(diag(flip(A)))==30
    fprintf('%s wins!!!', player1)
    gamewin=0;
    return;
end


     
end