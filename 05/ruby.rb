s=`dd`
i=s[/^ *K/].size
s.gsub!(/^ {#{i-1}}\K /,?#)
s.gsub!(/# *(?=T)/){?#*$&.size}
puts s