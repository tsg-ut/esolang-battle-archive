require'matrix'
a,b,c,d=STDIN.lines.map{|l|Vector[*l.split.map(&:to_i)]}
p Matrix[b-a,c-a,d-a].det/6