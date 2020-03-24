defmodule Drop do
  def drop(a, b) do
    drop(a, b, 1)
  end

  def drop([], _, _) do
    []
  end

  def drop([h | t], n, n) do
    drop(t, n, 1)
  end

  def drop([h | t], n, b) do
    [h | drop(t, n, b + 1)]
  end
end
