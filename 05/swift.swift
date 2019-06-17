var x=0
while let l=readLine(){for i in l{x=i=="T" ?0:i=="K" ?x-49:(x+1)%50;print(x<1 ?"x":i,terminator:"")}
print()}