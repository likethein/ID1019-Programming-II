defmodule Evaluate do
  def eval([]) do
    0
  end

  def eval(list) do
    eval(list, 0)
  end

  def eval([], Sum) do
    Sum
  end

  def eval(['+', N2 | L], Sum) do
    eval(L, Sum + N)
  end

  def eval(['-', N2 | L], Sum) do
    eval(L, Sum - N)
  end

  def eval([h | t], sum) do
    eval(t, h + sum)
  end
end
