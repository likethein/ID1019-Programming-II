defmodule Color do
  def convert(depth, max) do
    f = depth / max
    a = f * 4
    x = trunc(a)
    y = trunc(255 * (a - x))

    case x do
      0 -> {:rgb, 0, 54, 65}
      1 -> {:rgb, 190, y, 43}
      2 -> {:rgb, y, 255, 89}
      3 -> {:rgb, y, 255, 45}
      4 -> {:rgb, y,  y, y}
    end
  end
end
