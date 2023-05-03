T=readtable("C:\Users\Aryan\Desktop\CombinedVariable.csv");
CombinedRatio=table2array(T(:,"Combined"));
[r,c] = size(CombinedRatio);
CombinedRatio = reshape(CombinedRatio,[c,r]);
CombinedRatio = fliplr(CombinedRatio);
data_transformed = zeros(size(CombinedRatio));
window_size = 50;
for i = 1:length(CombinedRatio)-window_size+1
    % Get the current window
    window = CombinedRatio(i:i+window_size-1);
    w = skewness(window);
    data_transformed(i) = w;
end
[dates]=table2array(T(:,"Date"));
[r,c] = size(dates);
dates = reshape(dates,[c,r]);
dates = fliplr(dates);

%plot
plot(dates,data_transformed)
title("skewness for window size = 50")
xlabel("Year")

