#!ruby -rmatrix
a,*b=$<.map &:split
p Matrix[*b.map{|x|x.zip(a).map{|e|eval e*?-}}].det/6