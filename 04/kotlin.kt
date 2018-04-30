fun main(args:Array<String>){
val a=(0..3).flatMap{_->readLine()!!.split(" ").map{a->a.toInt()}}.toMutableList()
for(z in 8 downTo 0)a[z]-=a[9+z%3]
println(-(a[7]*(a[3]*a[2]-a[0]*a[5])+a[6]*(a[1]*a[5]-a[4]*a[2])+a[8]*(a[0]*a[4]-a[3]*a[1]))/6)
}