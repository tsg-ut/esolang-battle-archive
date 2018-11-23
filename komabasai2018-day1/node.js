[h,w]=(""+require("fs").readFileSync(0)).split`
`
s=a="*".repeat(w)+`
`
s+=`*${" ".repeat(w-2)}*
`.repeat(h-2)
console.log(s+a)