a=gets('_')||""
t=a=~/T/||0
h,k=(a=~/K/||0).divmod 51
h.times{puts a.lines[0]}
puts " "*k+"K"*(t-k+1)