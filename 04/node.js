[,,,a,b,c,d,e,f,g,h,i]=(""+require("fs").readFileSync(0)).split(/\s/).map((e,i,x)=>e-x[i%3]);console.log((a*e*i+b*f*g+c*d*h-a*f*h-b*d*i-c*e*g)/6)
