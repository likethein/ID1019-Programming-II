defmodule Flat do
  def flatten([]) do
    []
  end

  def flatten([h | t]) do
    flatten(h) ++ flatten(t)
  end

def flatten(n) do
    [n]
  end


end
