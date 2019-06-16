main=interact$unlines.scanl1(!).lines
a!b|(x,y)<-span(<'J')$zipWith max a b=x++scanr1 max y