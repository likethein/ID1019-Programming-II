defmodule Sum do
  def sum(list) do
    sum(list, 0, 0)
  end

  def sum([], len, sum) do
    {len, sum}
  end

  def sum([h | t], len, sum) do
    sum(t, len + 1, sum + h)
  end
end
