function [A,gamewin] = Checkwin2_NutterJSharmaA(move2,A, player2)

gamewin=1;

%change matrix for new player2 move
 if move2 ==1
     A=A+ [1,0,0;0,0,0;0,0,0];
 elseif move2 == 2
     A= A+ [0,1,0;0,0,0;0,0,0];
 elseif move2 ==3
     A= A+ [0,0,1;0,0,0;0,0,0];
 elseif move2 ==4
     A= A+ [0,0,0;1,0,0;0,0,0];
 elseif move2==5
     A= A+ [0,0,0;0,1,0;0,0,0];
 elseif move2==6
     A= A+ [0,0,0;0,0,1;0,0,0];
 elseif move2==7
     A= A+ [0,0,0;0,0,0;1,0,0];
 elseif move2==8
     A= A+ [0,0,0;0,0,0;0,1,0];
 else
     A= A+ [0,0,0;0,0,0;0,0,1];
 end
     
 %checkwin player2 move
if     sum(A(3,:))== 3 
    fprintf('%s wins!!!', player2)
    gamewin=0;
    return;
elseif sum(A(2,:))== 3
     fprintf('%s wins!!!', player2)
    gamewin=0;
    return;
elseif sum(A(1,:))== 3
   fprintf('%s wins!!!', player2)
    gamewin=0;
    return;
elseif sum(A(:,3))== 3 
    fprintf('%s wins!!!', player2)
    gamewin=0;
    return;
elseif sum(A(:,2))== 3 
   fprintf('%s wins!!!', player2)
    gamewin=0;
    return;
elseif sum(A(:,1))== 3
   fprintf('%s wins!!!', player2)
    gamewin=0;
    return;    
elseif sum(diag(A))== 3   
   fprintf('%s wins!!!', player2)
    gamewin=0;
    return;
elseif sum(diag(flip(A)))==3
  fprintf('%s wins!!!', player2)
    gamewin=0;
    return;
    
end

end  
     