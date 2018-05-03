import java.util.*
fun main(a:Array<String>){var x=0
val X=IntArray(12)
val s=Scanner(System.`in`)
repeat(12){i->X[i]=s.nextInt()-X[i%3]
val p=(i+1)%3+3
val q=(i+2)%3+6
x+=i/9*X[i]*(X[p]*X[q]-X[p+3]*X[q-3])}
print(x/6)}