defmodule Powers do
  # nth/2
  def nth(_base, 0), do: 1
  def nth(base, power) when power > 0 do
    nth(base, power, 1)
  end
  def nth(base, power) when power < 0 do
    1.0 / nth(base,-power)
  end

  defp nth(1, _power, _acc), do: 1
  defp nth(_base, 0, acc), do: acc
  defp nth(base, power, acc) do
    nth(base, power-1, base * acc)
  end

  # nth_root/2
  def nth_root(x,n), do: nth_root(x,n,x/2.0)

  defp nth_root(x,n,a) do
    f = nth(a,n) - x
    fprime = n * nth(a,n-1)
    next = a-f / fprime
    change = abs(next-a)
    if change < 1.0e-8 do
      next
    else
      nth_root(x,n,next)
    end
  end
end
