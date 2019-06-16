fun main(){var s = readLine()!!
println(s)
val r=Regex("T")
val p=r.find(s)!!.range.start;for (m in generateSequence(::readLine)){val q=m.toCharArray()
q[p]='r'
println(Regex("K.*r").replace(String(q), {z->"r".repeat(z.value.length)}))}}