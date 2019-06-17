defmodule M do
def f(x)do
""<>c=IO.read(1)
IO.write(if x<1,do: "@",else: c)
f(case c do"T"->1
"K"->x-50
_->rem(x+1,51)end)end
end
M.f(1)