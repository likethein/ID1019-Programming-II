defmodule Power do
  def power(n, m) do
    power(n, m, 1)
  end

  def power(n, 0, out) do
    out
  end

  def power(n, m, ac) do
    IO.puts(m - 1)
    power(n, m - 1, n * ac)
  end
end
