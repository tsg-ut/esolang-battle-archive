var b=false,d=1
while let l=readLine(){print(String(
l.map{c in
if"T"==c{d=0}
b="K"==c||b&&d>0
d=(d+1)%50
return d==1||b ?"a":c
}))}