function boardplot1=Boardplot_NutterJSharmaA(move1)

% for each move 1-9, plot the appropriate symbol in the right location on
% the plot

plot([5 5],[0 15]) 
hold on
plot ([10 10], [0 15])
hold on
plot([0 15], [5 5])
hold on
plot ([0 15], [10 10])
hold on


if move1==1
    plot([1 4],[11 14])
    plot([1 4],[14 11])
elseif move1==2
    plot([6 9],[11 14])
    plot([6 9],[14 11])
elseif move1 ==3
    plot([11 14],[11 14])
    plot([11 14],[14 11])
elseif move1 ==4
    plot([1 4],[6 9])
    plot([1 4],[9 6])
elseif move1==5
    plot([6 9],[6 9])
    plot([6,9],[9 6])
elseif move1 ==6
    plot([11 14],[6 9])
    plot([11 14],[9 6])
elseif move1==7
        plot([1 4],[1 4])
        plot([1 4],[4 1])
elseif move1==8
    plot([6 9],[1 4])
    plot([6 9],[4 1])
elseif move1==9
    plot([11 14],[1 4])
    plot ([11 14],[4 1])
end

hold on

                               
end
