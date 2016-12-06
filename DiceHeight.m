%Function to find the value of the largest match (that is integers with two or more matches)

function height = DiceHeight(r)
N = CountMem(r);
N(N==1)=0;
height = min(find(N));
end