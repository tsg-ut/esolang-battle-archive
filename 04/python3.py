a=[*map(int,open(0).read().split())]
print(-sum(a[i//2]*a[8-i//12*6-i%3]*a[(5<i<18)*6+3+(i+3)//2%3]^-(i%2)for i in range(24))//6-2)