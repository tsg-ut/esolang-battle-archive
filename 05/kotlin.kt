fun main(){var s=readLine()!!
var d=0
do{d=readLine()!!.indexOf('K')
println(s)}while(d<0)
print(" ".repeat(d)+"K".repeat(s.indexOf('T')-d+1))}