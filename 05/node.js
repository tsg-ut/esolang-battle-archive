s=""+require("fs").readFileSync(0)
console.log(s.replace(RegExp(`\n(.{${s.search(/T/)}}).`,"g"),"\n$1#").replace(/K *#/,m=>`K${"#".repeat(m.length-1)}`))