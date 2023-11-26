%% Sword - The Card Game

% Print available card types in the deck
fprintf(['Card types in the' ...
    ' deck are Hearts, Clubs, Diamonds, Spades\n']);

% User inputs for card type and number
guess = lower(input('Choose a card type from the deck: ', 's'));
guess2 = lower(input('Choose a card number (Ace, 2-10, Jack, Queen, King): ', 's'));

% Concatenate user's card type and number
userCard = [guess guess2];

% Define the deck of cards
deck = lower({'HeartsAce', 'Hearts2', 'Hearts3', 'Hearts4', 'Hearts5', 'Hearts6', 'Hearts7', 'Hearts8', 'Hearts9', 'Hearts10', 'HeartsJack', 'HeartsQueen', 'HeartsKing', ...
        'SpadesAce', 'Spades2', 'Spades3', 'Spades4', 'Spades5', 'Spades6', 'Spades7', 'Spades8', 'Spades9', 'Spades10', 'SpadesJack', 'SpadesQueen', 'SpadesKing', ...
        'ClubsAce', 'Clubs2', 'Clubs3', 'Clubs4', 'Clubs5', 'Clubs6', 'Clubs7', 'Clubs8', 'Clubs9', 'Clubs10', 'ClubsJack', 'ClubsQueen', 'ClubsKing', ...
        'DiamondsAce', 'Diamonds2', 'Diamonds3', 'Diamonds4', 'Diamonds5', 'Diamonds6', 'Diamonds7', 'Diamonds8', 'Diamonds9', 'Diamonds10', 'DiamondsJack', 'DiamondsQueen', 'DiamondsKing'});

% Shuffle the deck
shuffledDeck = deck(randperm(52));

% Game loop
for i = 1:52
    % Check if the current card matches user's guess
    isMatch = strcmp(userCard, shuffledDeck{i});
    
    % Determine whose turn it is
    if mod(i, 2) == 1
        % User's turn
        if isMatch
            fprintf('Your turn and the card is %s\n', shuffledDeck{i});
            fprintf('YOU WIN!\n');
            break;
        else
            fprintf('Your turn and the card is %s\n', shuffledDeck{i});
            fprintf('Card must be %s\n', userCard);
            input('Hit Enter to continue: ');
        end
    else
        % Opponent's turn
        if isMatch
            fprintf('Opponents turn and the card is %s\n', shuffledDeck{i});
            fprintf('YOU LOSE!\n');
            break;
        else
            fprintf('Opponents turn and the card is %s\n', shuffledDeck{i});
            fprintf('Card must be %s\n', userCard);
            input('Hit Enter to continue: ');
        end
    end
end



