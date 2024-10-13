close all
board = zeros(3,3);

% Draw Board

figure(1)                                           %https://www.mathworks.com/matlabcentral/answers/313999-help-with-tictactoe-code is the link that got me this fancy game board
    plot([0.5 3.5],[-1.5 -1.5], 'k','linewidth',2);
    hold on
    plot([0.5 3.5],[-2.5 -2.5], 'k','linewidth',2)
    plot([1.5 1.5],[-0.5 -3.5], 'k','linewidth',2)
    plot([2.5 2.5],[-0.5 -3.5], 'k','linewidth',2)
    hold off
    axis off

 %first player move
 for turn = [1:9:2]
   usermove = input('enter your move. must type as [r,c]');
    r = usermove(1);
    c = usermove(2);
    board(r,c) = 1;
    text(c, -r,'X','horizontalalignment','center','fontsize',20)

  %second player loop (computer)
    for turn = [2:8:2]
        computermove = randi([1,3],1,2);
        r2 = computermove(1);
        c2 = computermove(2);
        board(r2,c2) = -1;
        text(c2, -r2,'O','horizontalalignment','center','fontsize',20)
          %  start if statements for board moves?
    end
 end

 %% updated version, just not being able to switch to computer move 

   close all
board = zeros(3,3);

% Draw Board

figure(1)                                           %https://www.mathworks.com/matlabcentral/answers/313999-help-with-tictactoe-code is the link that got me this fancy game board
    plot([0.5 3.5],[-1.5 -1.5], 'k','linewidth',2);
    hold on
    plot([0.5 3.5],[-2.5 -2.5], 'k','linewidth',2)
    plot([1.5 1.5],[-0.5 -3.5], 'k','linewidth',2)
    plot([2.5 2.5],[-0.5 -3.5], 'k','linewidth',2)
    hold off
    axis off

for takeTurns = 1:9
    if (mod(takeTurns,2)==1)
        nextMove = 0;

         while nextMove ~=10

             %first player move
             for turn = [1:9:2]
               usermove = input('enter your move. must type as [r,c]');
                r = usermove(1);
                c = usermove(2);
                board(r,c) = 1;
                text(c, -r,'X','horizontalalignment','center','fontsize',20)
                        if r== '1' && c == '1'
                            board(1,1) = "X";
                            nextMove = 10;
                        elseif r== '1' && c == '2'
                            board(1,2) = "X";
                            nextMove = 10;
                        elseif r== '1' && c == '3'
                            board(1,3) = "X";
                            nextMove = 10;
                        elseif r== '2' && c == '1'
                            board(2,1) = "X";
                            nextMove = 10;
                        elseif r== '2' && c == '2'
                            board(2,2) = "X";
                            nextMove = 10;
                        elseif r== '2' && c == '3'
                            board(2,3) = "X";
                            nextMove = 10;
                        elseif r== '3' && c == '1'
                            board(3,1) = "X";
                            nextMove = 10;
                        elseif r== '3' && c == '2'
                            board(3,1) = "X";
                            nextMove = 10;
                        elseif r== '3' && c == '3'
                            board(3,3) = "X";
                            nextMove = 10;
                        else %anything other than 1-9 will not be accepted as well as making the same move
                                        %will then ask user to enter a correct input
                                        fprintf('Invalid input, chose 1-9 or do not chose the same move\n')
                        end
             end
         end

         while nextMove ~= 20
            %second player loop (computer)
              for turn = [2:8:2]
                  computermove = randi([1,3],1,2);
                  r2 = computermove(1);
                  c2 = computermove(2);
                  board(r2,c2) = -1;
                  text(c2, -r2,'O','horizontalalignment','center','fontsize',20)
                      %  start if statements for board moves?
        

            if  r== '1' && c == '1'
                board(1,1) = "O";
                nextMove = 20;
            elseif r== '1' && c == '2'
                board(1,2) = "O";
                nextMove = 20;
            elseif r== '1' && c == '3'
                board(1,3) = "O";
                nextMove = 20;
            elseif r== '2' && c == '1'
                board(2,1) = "O";
                nextMove = 20;
            elseif r== '2' && c == '2'
                board(2,2) = "O";
                nextMove = 20;
            elseif r== '2' && c == '3'
                board(2,3) = "O";
                nextMove = 20;
            elseif r== '3' && c == '1'
                board(3,1) = "O";
                nextMove = 20;
            elseif r== '3' && c == '2'
                board(3,1) = "O";
                nextMove = 20;
            elseif r== '3' && c == '3'
                board(3,3) = "O";
                nextMove = 20;
            else %anything other than 1-9 will not be accepted as well as making the same move
                            %will then ask user to enter a correct input
                            fprintf('Invalid input, chose 1-9 or do not chose the same move\n')
            end 
            end
        end
    end
end
 
