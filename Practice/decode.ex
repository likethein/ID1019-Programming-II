defmodule Decode do
  def decode([]) do
    []
  end

  def decode([{a, 1} | t]) do
    [a | decode(t)]
  end

  def decode([{a, n} | t]) do
    [a | decode([{a, n - 1} | t])]
  end
end
