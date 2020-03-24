defmodule Bouncingball do
  def bouncing_ball(h, bounce, window) do
    bouncing_ball(h, bounce, window, 1)
  end

  def bouncing_ball(h, bounce, window, count) do
    cond do
      h * bounce > window -> bouncing_ball(h * bounce, bounce, window, count + 2)
      h * bounce < window -> count
    end
  end
end
