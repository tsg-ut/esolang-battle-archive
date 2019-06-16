s=`dd`
s.gsub!(/^ {#{s[/^ *K/].size-1}}\K /,?#)
s.gsub!(/# *(?=T)/){?#*$&.size}
puts s