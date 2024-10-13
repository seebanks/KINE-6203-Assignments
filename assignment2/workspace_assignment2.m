
   %  board = ["1","2","3"; "4","5","6"; "7","8","9"] 
  %  prompt = "Where would you like to go? (row, column)"
  %  move = input(prompt);
  % figure displ(move)
    
figure(1)                              %https://www.mathworks.com/matlabcentral/answers/313999-help-with-tictactoe-code is the link that got me this fancy game board
    plot([0.5 3.5],[-1.5 -1.5], 'k','linewidth',2);
    hold on
    plot([0.5 3.5],[-2.5 -2.5], 'k','linewidth',2)
    plot([1.5 1.5],[-0.5 -3.5], 'k','linewidth',2)
    plot([2.5 2.5],[-0.5 -3.5], 'k','linewidth',2)
    hold off
    axis off
  
 for takeTurnsMoving = [1:3,1:3]
    
     if(mod(takeTurnsMoving,2)==1)
         nextMove = 0;
         while nextMove ~= 10

               usermove = input('enter your move. must type as [r,c] ', 's');
               if usermove == '[1,1]';
                  r = usermove(1);
                  c = usermove(2);
                  figure(1,1) = "[1,1]";
                   nextMove = 10;
               end
         end
     end
end

%board(r,c) = 1;
%text(c,-r,'X','horizontalalignment','center','fontsize',20)
dis(c,-r,'X','horizontalalignment','center','fontsize',20)



