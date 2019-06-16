fun main(){var s=readLine()!!
println(s)
while(0<1){var m=readLine()?:break
var q=m.toCharArray()
q[s.indexOf('T')]='r'
println(Regex("K.*r").replace(String(q),{z->"r".repeat(z.value.length)}))}}