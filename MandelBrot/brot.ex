defmodule Brot do
  def mandelbrot(c, m) do
    z0 = Cmplx.new(0, 0)
    i = 0
    test(i, z0, c, m)
  end

  def test(i, z0, c, m) when m > i do
    abs = Cmplx.abs(z0)

    if(abs < 2) do
      z1 = Cmplx.add(Cmplx.sqr(z0), c)
      test(i + 1, z1, c, m)
    else
      i
    end
  end

  def test(i, z0, c, m) do
    0
  end
end
