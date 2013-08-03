defmodule Powers do
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
end
