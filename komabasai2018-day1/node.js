[h,w]=(""+require("fs").readFileSync(0)).split`
`
s=a="*".repeat(w)+`
`
for(h--;--h;)s+=`*${" ".repeat(w-2)}*
`
console.log(s+a)