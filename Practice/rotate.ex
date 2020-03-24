defmodule Rotate do
  def rotate(a, b) do
    rotate(a, b, [], 0)
  end

  def rotate(front, b, back, b) do
    Enum.append(front, Enum.reverse(back))
  end

  def rotate([h | t], b, back, n) do
    rotate(t, b, [h | back], n + 1)
  end
end
