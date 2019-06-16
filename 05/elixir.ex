defmodule A do
def d(s,n) do
String.duplicate(s,n)
end
def e(s) do
String.length(Enum.at(String.split(IO.read(:line),s),0))end
def b(t,h) do
c(t,e("K"),h)end
def c(t,51,h)do
b(t,h+1)end
def c(t,k,h)do
IO.puts d(" ",t)<>"T"<>d(" ",49-t)
Enum.each(1..h,fn(_)->IO.puts d(" ",t)<>"*"<>d(" ",49-t)end)
IO.puts d(" ",k)<>"K"<>d("*",t-k)<>d(" ",49-t)end
end
A.b(A.e("T"),0)