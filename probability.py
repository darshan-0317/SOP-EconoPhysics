import pandas as pd
df = pd.read_excel (r'/content/NIFTY_50_-_HistoricalPE_PBDIV_Data.xlsx')
a = df['Composite Index'].dropna().values
arr1 = a
print(a)
print(len(a))
import math
import numpy as np

arr = (range(5876))
parr =list(range(5817))

for i in range(1):
    max_val = max(arr[0+i:60+i])
    min_val = min(arr[0+i:60+i])
    
    val_range = max_val - min_val
    h = math.ceil(val_range/10)
    
    p = 0
    low = min_val
    prob_arr = []*(11)
    for k in range(10):
        ctr = 0
        high = low + h
        #print("low is", low)
        #print("high is", high)
        for j in range(i, 60+i):
            if arr[j] >= low and arr[j] < high:
                ctr += 1
                #print("ctr is", ctr)
            else:
                continue
        # print("ctr is", ctr)
        prob = float(ctr/60)
        
        #print("prob is", prob)
        p += prob
        #print("p is", p)
        low += h
    parr[i] = round(p,1)
    print("probability is", parr[i])

sum_val = sum(parr)
print("sum is", sum_val)
