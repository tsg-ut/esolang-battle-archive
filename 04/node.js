q=(""+require("fs").readFileSync(0)).split(/\s/).map(i=>parseInt(i))
let[,,,a,b,c,d,e,f,g,h,i]=q.map((e,i)=>e-q[i%3])
console.log((a*e*i+b*f*g+c*d*h-a*f*h-b*d*i-c*e*g)/6)