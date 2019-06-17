var x=0
while let l=readLine(){l.forEach{x=$0=="T" ?0:$0=="K" ?x-49:(x+1)%50;print(x<1 ?"x":$0,terminator:"")}
print()}