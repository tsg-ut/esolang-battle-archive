f=fn s,x,t,f->
case IO.gets x do
:eof->IO.write String.slice String.trim_trailing(t)<>String.duplicate("*",99),0,String.length String.trim_trailing s
t->f.(s,s,t,f)end
end
f.(IO.gets(""),"","",f)