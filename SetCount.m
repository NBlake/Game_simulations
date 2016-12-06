%Function to count the number of matches

function sets = SetCount(r)
N = CountMem(r);
N(N==1)=0;
sets = length(find(N));
end