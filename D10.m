% A function to roll n ten-sided dice r times and catalogue the outcomes:
% frequency of highest set (a pair or more of matches), frequency of widest (number of matching dice)
% set and frequency of number of sets

function [height, width, sets] = D10(n,r)

h = zeros(1,11);
width = zeros(1,n+1);
sets = zeros(1,round(n/2+1));

for i=1:r
    [N,edges] = histcounts(randi(10, [n 1]), [1:11]);
    N(N==1)=0;
    h(min(find(N)) + 1) = h(min(find(N)) + 1) + 1;
    width(max(N)+1) = width(max(N)+1) + 1; %Note: max(N) is never one
    sets(length(find(N))+1) = sets(length(find(N))+1) + 1;
    clear N 
end
  height = zeros(1,11);
  probs = h/r;
  for j=11:-1:1
      height(j)=sum(probs(1:12-j));
  end
sets = sets/r
width = width/r
height(height~=0)





