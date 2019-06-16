import String
f=fn s,x,t,f->case IO.gets x do
:eof->IO.write slice trim_trailing(t)<>duplicate("*",99),0,String.length trim_trailing s
t->f.(s,s,t,f)end
end
f.(IO.gets(""),"","",f)