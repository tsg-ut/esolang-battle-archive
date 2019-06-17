[inputs]as$i|(.+"
")*($i|length)+($i[-1]|gsub(" +$";""))+"@"*((.|index("T"))-($i[-1]|index("K")))