[inputs]as$i|$i[-1]as$k|(.+"\n")*($i|length)+($k|gsub(" +$";""))+"@"*((.|index("T"))-($k|index("K")))