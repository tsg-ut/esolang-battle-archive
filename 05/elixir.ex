defmodule F do
def f(s,t)do
case IO.gets("")do
:eof->IO.write String.slice(String.trim_trailing(t)<>String.duplicate("*",99),0,String.length String.trim_trailing s)
t->IO.write s
f(s,t)
end
end
end
F.f(IO.gets(""),"")
