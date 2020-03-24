defmodule Detector do
  def average([]) do
    0
  end

  def average([h | t]) do
    av = h + average(t)
  end

  def better_than_average(class_points, your_points) do
    average = average(class_points) / Kernel.length(class_points)

    cond do
      your_points > average -> true
      your_points < average -> false
    end
  end
end
