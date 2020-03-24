defmodule Fac do
def facl(1) do [1] end
def facl(n) do
rest = facl(n-1)
[f| _] = rest
[n*f| rest]
end
end
