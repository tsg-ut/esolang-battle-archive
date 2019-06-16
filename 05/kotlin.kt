fun main(){var s=readLine()!!
var d=0
do{d=readLine()!!.indexOf('K')
println(s)}while(d<0)
print("".padEnd(d).padEnd(s.indexOf('T')+1,'K'))}