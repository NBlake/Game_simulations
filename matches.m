%A function to bin the integers from a vector v

function matches = FindMatches(v)

matches = zeros(1,max(v));
for i = 1:length(v)
    matches(v(i)) = matches(v(i))+1;
end   