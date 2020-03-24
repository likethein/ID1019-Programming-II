defmodule HP35 do
  def hp35(a) do
    hp35(a, [])
  end

  def hp35([], [res | _]) do
    res
  end

  def hp35([:add | rest], [n1, n2 | stack]) do
    hp35(rest, [n1 + n2 | stack])
  end

  def hp35([:sub | rest], [n1, n2 | stack]) do
    hp35(rest, [n2 - n1 | stack])
  end

  def hp35([n | rest], stack) do
    hp35(rest, [n | stack])
  end
end
