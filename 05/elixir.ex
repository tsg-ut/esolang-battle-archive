defmodule M do
def f(x)do
c=IO.read(1)
x=case c do
:eof->1/0
"T"->0
"K"->x-50
_->rem(x+1,51)end
IO.write(if x<1,do: "@",else: c)
f(x)end
end
M.f(0)