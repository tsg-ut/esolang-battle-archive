select substr(replace(v,substr(v,52,51),substr(v,0,52)),0,instr(v,'K'))||printf('%.'||(length(substr(v,instr(v,'K')))-50+instr(v,'T'))||'c','K')from i