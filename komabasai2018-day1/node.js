[h,w]=(""+require("fs").readFileSync(0)).split`
`
a="*".repeat(w)+`
`
console.log(a+`*${" ".repeat(w-2)}*
`.repeat(h-2)+a)