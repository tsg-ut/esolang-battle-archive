console.log(require('fs').readFileSync(0,'utf8').split("\n").map(q=>{a=parseInt(q,2);for(i=1;a>0;i++)a-=i;return a==0?1:0}).splice(0,50).join(""))