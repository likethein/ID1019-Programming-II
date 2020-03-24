defmodule Sort do
  def isort(l) do
    isort(l, [])
  end

  def isort([], sorted) do
    sorted
  end

  def isort([head | tail], sorted) do
    isort(tail, insert(head, sorted))
  end

  def insert(x, []) do
    [x]
  end

  def insert(x, [h | t]) do
    cond do
      x >= h -> [h | insert(x, t)]
      h > x -> [x | [h | t]]
    end
  end

  def split([]) do
    []
  end

  def split([x]) do
    [x]
  end

  def split([h | t], L1, L2) do
    split(t, [L2 | h], L1)
  end

  def merge([], l2) do
    l2
  end

  def merge(l1, []) do
    l1
  end

  def merge([x1 | l1], [x2 | _] = l2) when x1 < x2 do
    [x1 | merge(l1, l2)]
  end

  def merge(l1, [x2 | l2]) do
    [x2 | merge(l1, l2)]
  end
end
