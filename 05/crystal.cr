x=`dd`.split('
')[..-2]
x.map{|s|puts s.sub(x[0].index('T')||0,'T').sub(/K *T/){|y|"K"*y.size}}