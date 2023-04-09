T=readtable("Data/CombinedVariable.csv")
[CombinedRatio]=table2array(T(:,"Combined"));
[dates]=table2array(T(:,"Date"));

% disp(dates);
cwt(CombinedRatio,'bump');


