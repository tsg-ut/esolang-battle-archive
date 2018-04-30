require'matrix'
p -Matrix[*$<.map{|l|Vector[*l.split.map(&:to_i),1]}].det/6