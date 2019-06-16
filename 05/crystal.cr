s=`dd`
puts s.gsub(/\n.{#{s=~/T/}}/,"\\0T").sub /K */{|y|"K"*y.size}