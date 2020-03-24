defmodule Env do
  def new() do
    []
  end

  def add(id, str, env) do
    [{id, str} | env]
  end

  def lookup(_, []) do
    nil
  end

  def lookup(id, [{id, str} | _]) do
    {id, str}
  end

  def lookup(id, [{_, _} | t]) do
    def lookup(id, [t])
  end

  def remove(ids, env) do
    remove(ids, env, [])
  end

  def remove(_, [], acc) do
    acc
  end

  def remove(ids, [{ids, _} | t], acc) do
    remove(ids, t, acc)
  end

  def remove(ids, [{nids, str} | t], acc) do
    remove(ids, t, [{nids, str} | acc])
  end
end
