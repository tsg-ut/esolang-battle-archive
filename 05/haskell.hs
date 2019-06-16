main=interact$unlines.f.s.lines
f(a:b)=zipWith min(scanl1 max$b!!0)(s a):b
s(a:b)=a:scanr1 max b