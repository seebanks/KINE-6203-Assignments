%This is eddited script from Example_TicTacToe
close all;
clc;
clear;

DoyouWanttoPlay = questdlg('Welcome to Tic Tac Toe! Do you want to play?', 'TicTacToe', 'Yes','No', 'No');

if strcmp(DoyouWanttoPlay,'No')
        msgbox("Sorry to see you go, come back to play soon!") %disp("Sorry to see you go, come play again soon!")

elseif strcmp(DoyouWanttoPlay,'Yes')
    %instructions = msgbox("The game board will appear as a pop up window outside of the matlab window. " + ...
       % " You will want to split your screen to see the gameboard and still type your play in the matlab window" + ...
       % "You can choose between rows 1-3 and columns 1-3.")
       %uiwait(instructions);
    
    PlayAgain = 'Yes';
    while strcmp(PlayAgain, 'Yes')

        clc
        clear
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

        for turn = 1:2:9
        
            for turn = 1 || 3 || 5 ||7 ||9 %[1 10]I changed this from having the brackets to indicate that this for loop will run 4 times switching between player and computer 

                        usermove = input('Enter your move to place your X mark. must type as [row,column]. ');
                        r = usermove(1);
                        c = usermove(2);

                         while (usermove(r < 1 || r > 3 || c < 1 || c > 3))
                                 disp("Invalid move, please re-enter your move. [r,c] ")
                                 usermove = input('Enter your move. must type as [r,c]');
                                 r = usermove(1);
                                 c = usermove(2);
                         end
                            while (board(r,c) ~=0)
                                disp("spot is already taken, please select another spot to place your mark.")
                                usermove = input('Enter your move. must type as [r,c]');
                                r = usermove(1);
                                c = usermove(2);
                            end
                               
                          
                            board(r,c) = 1;
                            text(c, -r,'X','horizontalalignment','center','fontsize',20) 

                                      result(1) = board(1,1) + board(1,2) + board(1,3);
                                      result(2) = board(2,1) + board(2,2) + board(2,3);
                                      result(3) = board(3,1) + board(3,2) + board(3,3);
                                      result(4) = board(1,1) + board(2,1) + board(3,1);
                                      result(5) = board(1,2) + board(2,2) + board(3,2);
                                      result(6) = board(1,3) + board(2,3) + board(3,3);
                                      result(7) = board(1,1) + board(2,2) + board(3,3);
                                      result(8) = board(1,3) + board(2,2) + board(3,1);
                                    if any(result == 3)     
                                        winner = msgbox("Good Job, You win!"); 
                                        uiwait(winner);
                                        break
                                    end
                                    if all(result ~=3) && (sum(sum(abs(board))) ==9)
                                           tie = msgbox("This game ended in a tie");
                                           uiwait(tie);
                                       break    
                                    end

                    %computer turn loop
               for turn = 2 || 4 || 6 ||8      
                          computermove = randi([1,3],1,2);
                          r = computermove(1);
                          c = computermove(2);

                            while board(r,c)~=0 
                            computermove = randi([1,3],1,2);
                            r = computermove(1);
                            c = computermove(2);
                            end
                            
                            board(r,c) = -1;
                            text(c, -r,'O','horizontalalignment','center','fontsize',20) 
                end
             
                          result = [sum(board), sum(board)];
                                      result(1) = board(1,1) + board(1,2) + board(1,3);
                                      result(2) = board(2,1) + board(2,2) + board(2,3);
                                      result(3) = board(3,1) + board(3,2) + board(3,3);
                                      result(4) = board(1,1) + board(2,1) + board(3,1);
                                      result(5) = board(1,2) + board(2,2) + board(3,2);
                                      result(6) = board(1,3) + board(2,3) + board(3,3);
                                      result(7) = board(1,1) + board(2,2) + board(3,3);
                                      result(8) = board(1,3) + board(2,2) + board(3,1);

                                    if any(result == -3)
                                        lose = msgbox("You Lose! Better luck next time");
                                        uiwait(lose)
                                        break
                                    end 

               if any(result == 3) || any(result == -3) || all(result ~=3) && (sum(sum(abs(board))) ==9)
               break%here
               end
            end
                if any(result == 3) || any(result == -3) || all(result ~=3) && (sum(sum(abs(board))) ==9)
                break
                end 
          end
     
            PlayAgain = questdlg("Do you want to play again?'", 'TicTacToe', 'Yes','No','No');        
            if contains(PlayAgain, 'Yes') %contains(DoyouWanttoPlay,'Yes')
                PlayAgain = 'Yes'; %figure out how to get game to play over again
            else 
                close all
             msgbox("Sorry to see you go! Come back again!") 
            end
    end 
end
