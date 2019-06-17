i=IO.read :all
x="T"
{t,_}=:binary.match i,x
{k,_}=:binary.match i,"K"
IO.puts for c<-0..byte_size(i)-1,do: (k<=c&&c<(k-(rem k,51)+t)||(rem c,51)==t)&&x||String.at(i,c)