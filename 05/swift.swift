var b=false,c=0,d=1
while let l=readLine(){
print(String(
l.map{(c:Character) -> Character in
if"T"==c{d=0}
if"K"==c{b=true}else{b=b&&d>0}
var e=c
if d<1||b{e="a"}
d=(d+1)%50
return e
}))
}