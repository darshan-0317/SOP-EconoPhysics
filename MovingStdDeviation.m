T=readtable("C:/Users/devan/OneDrive/Desktop/CombinedVariable.csv");
CombinedRatio=table2array(T(:,"Combined"));
[r,c] = size(CombinedRatio);
CombinedRatio = reshape(CombinedRatio,[c,r]);
CombinedRatio = fliplr(CombinedRatio);
%reversed the elements since we are going from past to present
%calculate moving standard deviation
windowSize = 120; %days
M = movstd(CombinedRatio,windowSize);

%dates
[dates]=table2array(T(:,"Date"));
[r,c] = size(dates);
dates = reshape(dates,[c,r])
dates = fliplr(dates);

%plot
plot(dates,M)