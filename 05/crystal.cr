a=gets('_')||""
t=a=~/T/||0
h,k=(a=~/K/||0).divmod 51
puts (a.lines[0]+'\n')*h
puts " "*k+"K"*(t-k+1)+" "*(49-t)