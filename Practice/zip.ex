defmodule Zip do
  def zip([], []) do
    []
  end

  def zip([h | t], [a | b]) do
    [{h, a} | zip(t, b)]
  end
end
