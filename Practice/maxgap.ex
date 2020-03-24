defmodule MaxGap do
  def max_gap(nums) do
    max_gap(nums, 0)
  end

  def max_gap([x], gap) do
    gap
  end

  def max_gap([h, h2 | t], gap) do
    cond do
      h2 - h > gap -> max_gap([h2 | t], h2 - h)
      h2 - h < gap -> max_gap([h2 | t], gap)
    end
  end
end
