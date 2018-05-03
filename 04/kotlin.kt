import java.util.*
fun main(a:Array<String>){var x=0
val X=IntArray(12)
val s=Scanner(System.`in`)
repeat(12){i->X[i]=s.nextInt()-X[i%3]
x+=i/9*X[i]*(X[(i+1)%3+3]*X[(i+2)%3+6]-X[(i+1)%3+6]*X[(i+2)%3+3])}
print(x/6)}