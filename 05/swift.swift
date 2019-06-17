var x=0
while let l=readLine(){l.map{x=$0>"S" ?0:$0>"J" ?x-49:(x+1)%50;print(x<1 ?"x":$0,terminator:"")}
print()}