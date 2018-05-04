var x:[Int]=[]
for _ in 0..<4{
x=x+readLine()!.characters.split{$0==" "}.map{Int(String($0))!}
}
for i in 0..<9{
x[i+3] -= x[i%3]
}
print((x[11]*(x[7]*x[3]-x[4]*x[6])+x[10]*(x[5]*x[6]-x[3]*x[8])+x[9]*(x[4]*x[8]-x[7]*x[5]))/6)