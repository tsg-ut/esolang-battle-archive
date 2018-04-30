#!ruby -rmatrix
a,*b=$<.map &:split
p Matrix[*b.map{|x|x.zip(a).map{|e,f|e.to_i-f.to_i}}].det/6