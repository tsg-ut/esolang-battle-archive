defmodule A do
  def b(t,h) do
    c(t,String.length(Enum.at(String.split(IO.read(:line),"K"),0)),h)
  end
  def c(t,51,h) do
    b(t,h+1)
  end
  def c(t,k,h) do
  IO.puts String.duplicate(" ",t)<>"T"<>String.duplicate(" ",49-t)
  Enum.each(1..h,fn(_)->IO.puts String.duplicate(" ",t)<>"*"<>String.duplicate(" ",49-t)end)
  IO.puts String.duplicate(" ",k)<>"K"<>String.duplicate("*",t-k)<>String.duplicate(" ",49-t)
  end
end
A.b(String.length(Enum.at(String.split(IO.read(:line),"T"),0)),0)