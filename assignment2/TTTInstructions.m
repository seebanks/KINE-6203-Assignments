
disp('Welcome to Tic Tac Toe!')
prompt = "Do you want to play? Yes/No ";
DoyouWanttoPlay = input("Do you want to play? ", "s");          %Need to solve for only allowing yes/no answer

if strcmp(DoyouWanttoPlay,'No')
        disp("Sorry to see you go, come play again soon!") 

else strcmp(DoyouWanttoPlay,'Yes')
    playAgain = 'Yes';
    
        while strcmp(DoyouWanttoPlay,'Yes')
    
        close all
            board = zeros(3,3);
        figure(1)                                           %https://www.mathworks.com/matlabcentral/answers/313999-help-with-tictactoe-code is the link that got me this fancy game board
        plot([0.5 3.5],[-1.5 -1.5], 'k','linewidth',2);
        hold on
        plot([0.5 3.5],[-2.5 -2.5], 'k','linewidth',2)
        plot([1.5 1.5],[-0.5 -3.5], 'k','linewidth',2)
        plot([2.5 2.5],[-0.5 -3.5], 'k','linewidth',2)
        hold off
        axis off

        %while DoyouWanttoPlay == "Yes" %|| DoyouWanttoPlay == "yes" may
        %delete this line later 
           %while ~FinishedGame == false 
              for turn = 1:9
                %checkforLegaluserMove = 1; 
                %checkforLegalCompmove = -1;
                     if turn == [1:9,2]
                       
                         %while checkforLegaluserMove ~=1|| ~-1
                            usermove = input('enter your move to place your X. must type as [r,c]');
                            r = usermove(1);
                            c = usermove(2);
                            if board(r,c) == 0
                            board(r,c) = 1;
                            text(c, -r,'X','horizontalalignment','center','fontsize',20)
                            turn = ~1;
                            else 
                                %disp('Invalid move. Try again.');
                            end 
                         
                               for turn = 1
                                    result = [sum(board), sum(board) ];
                                      result(1) = board(1,1) + board(2,2) + board(1,3);
                                      result(2) = board(2,1) + board(2,2) + board(2,3);
                                      result(3) = board(3,1) + board(3,2) + board(3,3);
                                      result(4) = board(1,1) + board(2,1) + board(3,1);
                                      result(5) = board(2,1) + board(2,2) + board(2,3);
                                      result(6) = board(1,3) + board(2,3) + board(3,3);
                                      result(7) = board(1,1) + board(2,2) + board(3,3);
                                      result(8) = board(1,3) + board(2,2) + board(3,1);
                                          if any(result == 3)
                                              disp('Good Job,You Win!')
                                              %FinishedGame = true;
                                          break
                                          end 
                               end 
                      
                    %second player loop (computer)
                     else turn = [2:8,2];
                         computermove = randi([1,3],1,2);
                         r = computermove(1);
                         c = computermove(2);
                           if board(r,c) == 0
                            board(r,c) = -1;
                            text(c, -r,'O','horizontalalignment','center','fontsize',20)
                            turn = 1;
                           end 
                     end   
                         for turn = ~1
                             result = [sum(board), sum(board) ];
                              result(1) = board(1,1) + board(2,2) + board(1,3);
                              result(2) = board(2,1) + board(2,2) + board(2,3);
                              result(3) = board(3,1) + board(3,2) + board(3,3);
                              result(4) = board(1,1) + board(2,1) + board(3,1);
                              result(5) = board(2,1) + board(2,2) + board(2,3);
                              result(6) = board(1,3) + board(2,3) + board(3,3);
                              result(7) = board(1,1) + board(2,2) + board(3,3);
                              result(8) = board(1,3) + board(2,2) + board(3,1);
                                  if any(result == -3)
                                      disp('You Lose! Better luck next time.')
                                      %FinishedGame = true;
                                  break
                                  end
                         end 
                       if all(result ~= 3) && (sum(sum(abs(board))) ==9) 
                           disp("This Game ended in a Tie")
                           %FinishedGame = true;
                       end 
                          end 
             end
             playAgain = disp('Do you want to play again? ', 'Yes','No');
               end
         %playAgain = disp('Do you want to play again? ', 'Yes','No');
              %end 
                      %end
                %end 
          %end
     %end
%end