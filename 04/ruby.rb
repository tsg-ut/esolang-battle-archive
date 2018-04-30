require'matrix'
a,b,c,d=STDIN.read.lines.map{|l|Vector[*l.split.map{|i|i.to_i}]}
p Matrix[b-a,c-a,d-a].det/6