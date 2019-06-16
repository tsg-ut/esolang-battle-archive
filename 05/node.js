s=""+require("fs").readFileSync(0)
console.log(s.replace(RegExp(`
(.{${s.search(/T/)}}).`,"g"),`
$1#`).replace(/K *#/,m=>"K"+"#".repeat(m.length-1)))