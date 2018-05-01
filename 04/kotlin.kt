fun main(b:Array<String>){val a=(0..3).flatMap{readLine()!!.split(" ").map{a->a.toInt()}}.toMutableList()
for(z in 0..8)a[z]-=a[9+z%3]
print(-(a[7]*(a[3]*a[2]-a[0]*a[5])+a[6]*(a[1]*a[5]-a[4]*a[2])+a[8]*(a[0]*a[4]-a[3]*a[1]))/6)}