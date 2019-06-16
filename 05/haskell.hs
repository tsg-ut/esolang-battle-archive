main=interact$unlines.(\(a:b)->zipWith min(scanl1 max$b!!0)(s a):b).s.lines
s(a:b)=a:scanr1 max b