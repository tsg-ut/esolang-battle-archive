l=(""+require('fs').readFileSync(0))
console.log(l.replace(/((K|\s){50})./g,"$1T").replace(/(?<=K.*) (?=.*T)/g,"*"))