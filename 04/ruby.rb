require'matrix'
p Matrix[*$<.map{|l|[1,*l.split.map(&:to_i)]}].det/6