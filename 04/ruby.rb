require'matrix'
p -Matrix[*$<.map{|l|[*l.split.map(&:to_i),1]}].det/6