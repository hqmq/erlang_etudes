defmodule Powers do
  def nth(_m,0) do
    1
  end

  def nth(m, 1) do
    m
  end

  def nth(m, n) when n >= 0 do
    m * nth(m, n-1)
  end

  def nth(m, n) when n < 0 do
    1.0 / nth(m, -n)
  end
end
