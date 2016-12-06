% A function to roll d n-sided dice.
%Inputs are the number of dice, d, and sides to the dice, n.

function roll = RollDice(n,d)
roll = randi(n, [d 1])';
end
