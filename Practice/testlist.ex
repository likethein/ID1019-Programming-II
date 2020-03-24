defmodule TestList do
  def multilist(nm) do
    multilist(nm, 1)
  end

  def multilist([], n) do
    []
  end

  def multilist([h | t], n) do
    [h * n | multilist(t, n + 1)]
  end
end
