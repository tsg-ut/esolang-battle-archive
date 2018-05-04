import java.util.*
fun main(a:Array<String>){val s=Scanner(System.`in`)
val X=IntArray(12)
print((0..11).sumBy{i->X[i]=s.nextInt()-X[i%3]
i/9*X[i]*(X[(i+1)%3+3]*X[(i+2)%3+6]-X[(i+1)%3+6]*X[(i+2)%3+3])}/6)}