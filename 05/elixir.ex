defmodule F do
def f(s,x,t)do
case IO.gets x do
:eof->IO.write String.slice String.trim_trailing(t)<>String.duplicate("*",99),0,String.length String.trim_trailing s
t->f s,s,t
end
end
end
F.f IO.gets(""),"",""