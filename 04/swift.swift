var x:[Int]=[]
for _ in 0..<4{x+=readLine()!.characters.split{$0==" "}.map{Int(String($0))!}}
for i in 0..<9{x[i]-=x[9+i%3]}
print((x[0]*(x[5]*x[7]-x[4]*x[8])+x[1]*(x[3]*x[8]-x[5]*x[6])+x[2]*(x[4]*x[6]-x[3]*x[7]))/6)