%KINE 6203 Assignment 2 - Tic Tac Toe
%Written by: Selina Banks
%Due Date: 09/18/2024


%This code is to play the game tic-tac-toe by having one user versus the
%computer. The user will be asked if they would like to play a game and if
%so, the player will make the first moved followed by the computer. The
%game board is a separate pop-up window, and the user will input moves in
%the matlab command window, so it is necessary to have your matlab screen
%condensed so that it only takes up half of your screen. At the end of the
%game, the user will be told who won/if there is a tie and then asked if
%they would like to play again. 

%Code tested on Matlab R2023a (ver 9.14) using a Macbook)S Sonoma 14.6.1


%This clears closes any figure open, clears the command window and clears
%the workspace to have a clean start
close all;
clc;
clear;

%dialouge box welcoming player and asking player if they would like to play. The default button
%is No, so if the user just hits 'return' the game will not play.
DoyouWanttoPlay = questdlg('Welcome to Tic Tac Toe! Do you want to play?', 'TicTacToe', 'Yes','No', 'No');

%if user chooses not to play, message box pops up with ending message
if strcmp(DoyouWanttoPlay,'No')
        msgbox("Sorry to see you go, come back to play soon!") 

%if user decides to play, game will be initated.
elseif strcmp(DoyouWanttoPlay,'Yes')

    %instruction message will appear to let user know what to expect and
    %how to move since the game board is a separate pop up window.
    instructions = msgbox([" For this game, the game board will appear as a pop up window outside of the matlab window. " ; " 1) You will want to split your screen by shrinking down matlab to see the gameboard and still type your moves into the matlab command window" ; "2)The board will have 3 rows (across) and 3 columns (down). You will enter your move as '[row #, column #]'. For example, if you want to place your mark in the first row and first column you will type '[1,1]'" ; "3)You will make the first move, you are the X's. The computer will go second and place O's" ; "Once you are ready to begin the game press 'ok'"]);
       uiwait(instructions);
    
   %This initializes the game if player chooses to play again at the
   %conclusion of the game
    PlayAgain = 'Yes';

    %initializing game
    while strcmp(PlayAgain, 'Yes')

        %Clear out gameboard if playing again, and then this will show the board
        %set up as a figure (I found this gameboard set up from another person in matlab
        %documentation %https://www.mathworks.com/matlabcentral/answers/313999-help-with-tictactoe-code is the link that got me this fancy game board
        clc
        clear
        close all
        board = zeros(3,3);
        figure(1)                                           
        plot([0.5 3.5],[-1.5 -1.5], 'k','linewidth',2);
        hold on
        plot([0.5 3.5],[-2.5 -2.5], 'k','linewidth',2)
        plot([1.5 1.5],[-0.5 -3.5], 'k','linewidth',2)
        plot([2.5 2.5],[-0.5 -3.5], 'k','linewidth',2)
        hold off
        axis off

        for turn = 1:2:9 %this loop saying that there are 9 turns total in this game and it will switch between player 1 (user) and player 2 (computer) until game is over.
        
            for turn = 1 || 3 || 5 || 7 || 9 %these are the users moves. Makes sure that user only moves on turns 1,3,5 and 7,9 if game goes that long

                        %prompt user to input their move
                        usermove = input('Enter your move to place your X mark. must type as [row,column]. ');
                        r = usermove(1);
                        c = usermove(2);

                        %this while loop checks to make sure that the user
                        %is only using numbers 1-3 for rows and columns. If
                        %player goes out of this bounds then they will be
                        %asked to input new move
                         while (usermove(r < 1 || r > 3 || c < 1 || c > 3))
                                 disp("Invalid move, please re-enter your move. [r,c] ")
                                 usermove = input('Enter your move. must type as [r,c]');
                                 r = usermove(1);
                                 c = usermove(2);
                         end
                            %this loop is used to ensure user is only goes
                            %in open spaces on the board. If user tries to
                            %place move ontop of user/computer move they
                            %will be asked to enter new move
                            while (board(r,c) ~=0)
                                disp("spot is already taken, please select another spot to place your mark.")
                                usermove = input('Enter your move. must type as [r,c]');
                                r = usermove(1);
                                c = usermove(2);
                            end
                               
                          %once correct move is made, this will place an X
                          %on the board, update board and act as a counter for results
                            board(r,c) = 1;
                            text(c, -r,'X','horizontalalignment','center','fontsize',20) 

                                    %after each user move, this code will
                                    %check if the user has won
                                    %(having 3 moves in a row in any of
                                    %these combinations) or if there is a
                                    %tie (happens if game gets to turn #9.
                                      result(1) = board(1,1) + board(1,2) + board(1,3);
                                      result(2) = board(2,1) + board(2,2) + board(2,3);
                                      result(3) = board(3,1) + board(3,2) + board(3,3);
                                      result(4) = board(1,1) + board(2,1) + board(3,1);
                                      result(5) = board(1,2) + board(2,2) + board(3,2);
                                      result(6) = board(1,3) + board(2,3) + board(3,3);
                                      result(7) = board(1,1) + board(2,2) + board(3,3);
                                      result(8) = board(1,3) + board(2,2) + board(3,1);


                                    if any(result == 3)   %using the any function looks through each of the result options to see if player has 3 marks in a row. As the board is filled out, the variable named results starts adding the rows/columns
                                        winner = msgbox("Good Job, You win!"); %message box to display winner message. uiwait is used to allow user to hit ok before prompt asking to play again is shown.
                                        uiwait(winner);
                                        break   %if the user wins, this breaks out of the for loop that says user and computer take turns for 9 rounds if game is done in >9 moves.
                                    end
                                    if all(result ~=3) && (sum(sum(abs(board))) ==9) %checking for tie since user gets last move of the game. a tie results of all result options don't =3 and the sum of the absolute values of the board =9. Taking the absolute value of the board since the computer moves are represented as -1.
                                           tie = msgbox("This game ended in a tie"); %message box to display tie game message.
                                           uiwait(tie);
                                       break    %if the user and computer tie, this breaks out of the for loop for turns and goes to the play game again option.
                                    end

               %computer move loop
               for turn = 2 || 4 || 6 ||8      %this loop is designed so the computer only goes on even turns. 
                          computermove = randi([1,3],1,2); %randi function is used so computer can generate its move. [1 3] means the computer can only choose from 1-3 and then it chooses 2 numbers to complete its move.
                          r = computermove(1);
                          c = computermove(2);

                            while board(r,c)~=0     %this says that the computer cannot go in a spot that the user has placed a mark in. Additionally, this checks for open spots throughout each time the loop is ran so the computer cannot go on its on marks either.
                            computermove = randi([1,3],1,2); %if computer generates a move that is already taken on the board, the while loop ensures that random number combinations are created until the computer finds an open spot. 
                            r = computermove(1);
                            c = computermove(2);
                            end
                            
                            %once correct move is made, this will place an O
                            %on the board, update board and act as a counter for results
                            board(r,c) = -1;
                            text(c, -r,'O','horizontalalignment','center','fontsize',20) 
                end
             
                                    %after each computer move, this code will
                                    %check if the computer has won
                                    %(having 3 moves in a row in any of
                                    %these combinations)
                                      result(1) = board(1,1) + board(1,2) + board(1,3);
                                      result(2) = board(2,1) + board(2,2) + board(2,3);
                                      result(3) = board(3,1) + board(3,2) + board(3,3);
                                      result(4) = board(1,1) + board(2,1) + board(3,1);
                                      result(5) = board(1,2) + board(2,2) + board(3,2);
                                      result(6) = board(1,3) + board(2,3) + board(3,3);
                                      result(7) = board(1,1) + board(2,2) + board(3,3);
                                      result(8) = board(1,3) + board(2,2) + board(3,1);

                                    if any(result == -3)    %using the any function looks through each of the result options to see if computer has 3 marks in a row. As the board is filled out, the variable named results starts adding the rows/columns
                                        lose = msgbox("You Lose! Better luck next time");
                                        uiwait(lose)
                                        break           %if computer wins before all 9 moves have occured, this break will end the for loop on computer turns.
                                    end 

               if any(result == 3) || any(result == -3) || all(result ~=3) && (sum(sum(abs(board))) ==9) %this is used as any result of the game will come to this spot to break out of the for loop running user turns.
               break
               end
            end
                if any(result == 3) || any(result == -3) || all(result ~=3) && (sum(sum(abs(board))) ==9) %this is used as any result of the game will come to this spot to break out of the for loop running computer turns.
                break
                end 
        end
     
            PlayAgain = questdlg("Do you want to play again?'", 'TicTacToe', 'Yes','No','No');      % once game has ended question dialouge box will pop up to ask if user would like to play again. 
            if contains(PlayAgain, 'Yes') %contains(DoyouWanttoPlay,'Yes')
                PlayAgain = 'Yes'; %if user wants to play again this will go back to the while loop at the beginning of the game to initiate a new game to start
            else 
                close all
             msgbox("Sorry to see you go! Come back again!") %if user chooses not to play again then the game will end and bye message will appear. 
            end
    end 
end