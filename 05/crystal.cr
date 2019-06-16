puts (s=`dd`).gsub(/
.{#{s=~/T/}}/,"\\0T").sub /K */{|y|"K"*y.size}