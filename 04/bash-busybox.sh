read j k l
read a b c
read d e f
read g h i
a=$[a-j];b=$[b-k];c=$[c-l]
d=$[d-j];e=$[e-k];f=$[f-l]
g=$[g-j];h=$[h-k];i=$[i-l]
echo $[(a*e*i+b*f*g+c*d*h-a*h*f-b*i*d-c*g*e)/6]