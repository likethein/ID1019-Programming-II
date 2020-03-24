defmodule Test do
  def duplicate([]) do
    []
  end

  def duplicate([head | tail]) do
    [head, head | duplicate(tail)]
  end

  def xadd(x, []) do
    [x]
  end

  def xadd(x, [h | t]) do
    cond do
      x != h -> [h | xadd(x, t)]
      x == h -> [x]
    end
  end

  def remove(x, []) do
    []
  end

  def remove(x, [h | t]) do
    cond do
      x != h -> [h | remove(x, t)]
      x == h -> remove(x, t)
    end
  end

  def append([], []) do
    []
  end

  def append([], [h | t]) do
    [h | t]
  end

  def append([h | t], []) do
    [h | t]
  end

  def append(list1, [h | t]) do
    list1 = list1 ++ [h]
    append(list1, t)
  end

  def nreverse([]) do
    []
  end

  def nreverse([h | t]) do
    r = nreverse(t)
    append(r, [h])
  end

  defmodule SumMix do
    def sumMin([]) do
      0
    end

    def sumMin([h | t]) do
      String.to_integer(h) + sumMin(t)
    end

    def helloWorld do
      "hello world!"
    end
  end
end
