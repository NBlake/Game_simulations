%%Script to roll and document the frequencies of n rolls on 1:r D10s.

clear all
close all

N = 100000000 % Number of rolls of each collection of D10s
T = 20 % the maximum number of D10s to roll in a collection

%Initialise some matrices in which to store data
Height = zeros(T,10);
Width = zeros(T,T);
Sets = zeros(T,10);


for j=1:N
    for i=2:T
        R = RollDice(10,i);
        if DiceHeight(R)>0
            Height(i,DiceHeight(R)) = Height(i,DiceHeight(R)) + 1;
        end
        Width(i,DiceWidth(R)) = Width(i,DiceWidth(R)) + 1;
        if SetCount(R)>0
            Sets(i,SetCount(R)) = Sets(i,SetCount(R)) + 1;
        end
    end
end 

%3D bar graphs
figure; bar3(Height/N);title('Probability of height or greater');ylabel('Number of dice');xlabel('Height of dice')
figure; bar3(Width/N);title('Probability of width');ylabel('Number of dice');xlabel('Width of dice')
figure; bar3(Sets/N);title('Probability of sets');ylabel('Number of dice');xlabel('Number of sets')

%Tables
array2table(round(Height/N,2),'VariableNames', {'one','two','three','four','five','six','seven','eight','nine','ten'}, 'RowNames', {'1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20'})
