function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber() - Assignment 5
%
%        NAME: Selina Banks
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3):'); 

while level ~= beginner && level ~= moderate && level ~= advanced %Bug #3 - switched || to &&. I found this error since I kept getting the invalid input message when typing the correct level in. This switch was made because the || means that the level can be 1 or 2 or 3 (never ending loop because we are only choosing 1 value). Putting the && tells the code to ensure that the level chosen is 1-3 and the code can continue on unless a different number is entered.      
    fprintf('Sorry, that is not a valid level selection.\n')
    level = input('Please re-enter a level of play (1-3): '); 
end


% set highest secret number based on level selected

    if level == beginner %Example Bug found: I found this by trying to run the code and getting a incorrect use of '=' error message.                      

        highest = beginnerHighest;

    elseif level == moderate

        highest = moderateHighest;

    else
        highest = advancedHighest; %Bug #8 - this bug was due to incorrect capitilization. I found this error by trying to run the code with level 3 status. I capitalized the H in the advancedHighest variable. Now the script can call on this variable and the player can play the advaced level of the game.

    end
% randomly select secret number between 1 and highest for level of play
secretNumber = floor(rand() * highest)+1;  %Bug #5 - I put the +1 outside of the parenthesis. When I was running the code before, the secret number was the highest number of the level every time I played. Switching the +1 outside of the floor function ensures that the secret number can be any number between the lowest value (indicated by floor) and the highest value set for the level. 

% initialize number of guesses and User_guess

numOfTries = 0; %Bug #6 -- num0Tries should be 0 to start with. I found this error from the closing message to say how many attempts it took to get the answer correct. It was always one more than my actual tries so I corrected it to show an accurate count of guesses.
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber

    % add 1 to the number of guesses the user has made

numOfTries = numOfTries + 1; %Bug 9 -- this line of code was below the if statment related to what to display if the guesses where toohigh/low. This code should be under the users guess that way it can calculate how many tries it took the user before they guessed the secret number. The code was running before but this makes the code more efficient

% get a v user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');
    while userGuess < 1 || userGuess > highest %Bug #4 - Found this when performing another scan of the script. Took away the ">=" before the 'highest' number that way the boundary that the person can choose from includes the highest number. The way it was before did not allow the user to select the highest number (i.e. you could not choose 100 if you were a moderate level)

        fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

        userGuess = input('');

    end % of guess validation loop

% report whether the user's guess was high, low, or correct

    if userGuess < secretNumber %Bug found #2 - this line also had a > symbol as well so this part of the script would never be read since it matched the line below it. I switched the sign to a < so that if the user is less than the secret number they get the prompted message that their guess was too low. If found this error by doing a scan over the code after fixing bug 1
        fprintf('Sorry, %d is too low.\n', userGuess);
    elseif userGuess > secretNumber 
        fprintf('Sorry, %d is too high.\n', userGuess);
    elseif numOfTries == 1 && userGuess == secretNumber %Bug 10 -- this line of code was not comparing the user guess to the secret number. The code was still running which made this bug difficult to find, but after looking over it several times I realized this line of code did not compare the guess to the secret number like the rest of the if statments in this section. Now this line of code will compare the first try and the secret number to see if the user guessed correctly on the first try
        fprintf('\nLucky You!  You got it on your first try!\n\n');
    else
        fprintf('\nCongratulations!  You got the secret number in %d tries.\n\n', numOfTries); %Bug 7 -- Error in it not showing how many tries it too to get. After playing the game, the end message would say "You got (Number of tries) in Game Over.". I knew this was an error as the game should indicate how many guesses it took to win. I took away the first %d because we want to spell out the secret number instead of using an intenger value. This allows the second use of %d to indicate the number of tries it took the user to guess, which is defined by the use of num0fTries after the statement. 
    end

end %Bug #1 Found, missing end for the while loop for user to enter guesses. There was an error line indicating a missing end when I ran this code. I figured out to place the end here because the user needs to know if their guess was too high/low until they guess the correct number. Once the correct number is chosen then the game will display its end message. 

fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');

end

% end of game