require'matrix'
x=$<.map{|l|Vector[*l.split.map(&:to_i),1]}
p -Matrix.rows(x).det/6
