function boardplot2=Boardplot2_NutterJSharmaA( move2)

if move2== 1
        plot([1 2.5],[11 14])
        plot([2.5 4],[14 11])
        plot ([1 4],[11 11])
    elseif move2 == 2
        plot([6 7.5], [11 14])
        plot([7.5 9], [14 11])
        plot([6 9], [11,11])
    elseif move2 == 3
        plot([11 12.5], [11 14])
        plot([12.5 14], [14 11])
        plot([11 14], [11 11])
    elseif move2 == 4
        plot([1 2.5], [6 9])
        plot([2.5 4], [9 6])
        plot([1 4],[6 6])
    elseif move2 == 5
        plot([6 7.5],[6 9])
        plot([7.5 9], [9 6])
        plot([6 9], [6 6])
    elseif move2 == 6
        plot([11 12.5], [6 9])
        plot([12.5 14], [9 6])
        plot([11 14],[6 6])
    elseif move2 == 7
        plot([1 2.5], [1 4])
        plot([2.5 4], [4 1])
        plot([1 4], [1 1])
    elseif move2 == 8
        plot([6 7.5], [1 4])
        plot([7.5 9],[4 1])
        plot([6 9],[1 1])
    elseif move2 == 9
        plot([11 12.5], [1 4])
        plot([12.5 14], [4 1])
        plot([11 14], [1 1])
   else
       disp ('Please type a number 1-9.')
   hold on
       
end
   