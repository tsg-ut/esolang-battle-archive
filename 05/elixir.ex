defmodule A do
def d(n,s\\" "),do: String.duplicate(s,n)
def e(s),do: String.length(Enum.at(String.split(IO.read(:line),s),0))
def b(t,h),do: c(t,e("K"),h)
def c(t,51,h),do: b(t,h+1)
def c(t,k,h),do: IO.puts Enum.join([d(t)<>"*"<>d(49-t)]++List.duplicate(d(t)<>"*"<>d(49-t),h)++[d(k)<>"*"<>d(t-k,"*")<>d(49-t)],"\n")
end
A.b(A.e("T"),0)