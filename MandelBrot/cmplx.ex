defmodule Cmplx do
  def new(r, i) do
    {:complex, r, i}
  end

  def add({:complex, r, i}, {:complex, r2, i2}) do
    {:complex, r + r2, i + i2}
  end

  def sqr({:complex, r, i}) do
    {:complex, r * r - i * i, r * i + i * r}
  end

  def abs({:complex, r, i}) do
    :math.sqrt(r * r + i * i)
  end
end
