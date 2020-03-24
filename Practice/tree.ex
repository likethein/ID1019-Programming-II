defmodule Tree do
  def member(_, nil) do
    :no
  end

  def member(e, {:leaf, e}) do
    :yes
  end

  def member(_, {:leaf, _}) do
    :no
  end

  def member(e, {:node, e, _, _}) do
    :yes
  end

  def member(e, {:node, v, left, _}) when e < v do
    member(e, left)
  end

  def member(e, {:node, _, _, right}) do
    member(e, right)
  end

  def insert_tree(e, nil) do
    {:leaf, e}
  end

  def insert_tree(e, {:leaf, v} = right) when e < v do
    {:node, e, nil, right}
  end

  def insert_tree(e, {:leaf, _} = left) do
    {:node, e, left, nil}
  end

  def insert_tree(e, {:node, h, left, right}) when e < h do
    {:node, h, insert_tree(e, left), right}
  end

  def insert_tree(e, {:node, h, left, right}) do
    {:node, h, left, insert_tree(e, right)}
  end

  def delete(e, {:leaf, e}) do
    nil
  end

  def delete(e, {:node, e, nil, right}) do
    right
  end

  def delete(e, {:node, e, left, nil}) do
    left
  end

  def delete(e, {:node, e, left, right}) do
    x = rightmost(left)
    newleft = delete(x, left)
    {:node, x, newleft, right}
  end

  def delete(e, {:node, v, left, right}) when e < v do
    {:node, v, delete(e, left), right}
  end

  def delete(e, {:node, v, left, right}) do
    {:node, v, left, delete(e, right)}
  end

  def rightmost({:leaf, e}) do
    e
  end

  def rightmost({:node, _, _, right}) do
    rightmost(right)
  end
end
