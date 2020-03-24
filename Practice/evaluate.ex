defmodule Evaluate do
  def evaluate({:add, x, y}) do
    evaluate(x) + evaluate(y)
  end

  def evaluate({:mul, x, y}) do
    evaluate(x) * evaluate(y)
  end

  def evaluate({:neg, y}) do
    -evaluate(y)
  end

  def eval(x) do
    x
  end
end
