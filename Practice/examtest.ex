defmodule Examtest do
  def reduce([]) do
    []
  end

  def reduce([h | t]) do
    duplicate(h, t)
  end

  def duplicate(h, [a | b]) do
    cond do
      h = a -> [h | reduce(b)]
      h != a -> [h, a | reduce(b)]
    end
  end
end
