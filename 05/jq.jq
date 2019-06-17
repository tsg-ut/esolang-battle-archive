[inputs]as$i|(.+"
")*($i|length)+($i[-1]|sub(" +$";""))+"@"*((.|index("T"))-($i[-1]|index("K")))