var d=1
while let l=readLine(){print(String(l.map{d=$0=="T" ?0:(d-($0=="K" ?49:-1))%50
return d<1 ?"a":$0}))}