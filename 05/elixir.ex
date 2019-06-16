a=String.split IO.read(:all),"
",trim: true
Enum.each a,fn x->IO.puts Regex.replace ~r/K *T/,String.slice(x,0,:binary.match(hd(a),"T")|>elem(0))<>"T",&(String.duplicate("K",byte_size(&1)))end