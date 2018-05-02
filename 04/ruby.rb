require'matrix'
p Matrix[*$<.map{|l|eval"a=1,"+l.split*?,}].det/6