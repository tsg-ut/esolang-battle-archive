x=STDIN.gets_to_end.lines
a=x[0]+"
"
c=x[-1].gsub("K","a"*99)
puts a*~-x.size,c[0..a=~/T/]