x=`dd`.split '
'
x[..-2].map{|s|puts s.sub(x[0].index('T')||0,'T').sub /K *T/{|y|"K"*y.size}}