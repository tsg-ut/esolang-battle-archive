[inputs|gsub("K +$";"K")]as$i|"\(.)
"*($i|length)+$i[-1]+"@"*((.|index("T"))-($i[-1]|length)+1)