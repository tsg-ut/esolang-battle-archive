i=IO.read :all
{t,_}=:binary.match i,"T"
{k,_}=:binary.match i,"K"
IO.puts for c<-0..byte_size(i)-1,do: (k<=c&&c<(k-(rem k,51)+t)||(rem c,51)==t)&&"T"||String.at(i,c)