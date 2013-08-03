defmodule Geom do
  @moduledoc """
    Calculates the area of geometric shapes.
    """

  @doc "area({shape, width, height}) -> the area of a shape with the given width and height.
  supported shapes = rectangle, triangle, ellipse"
  def area({shape, width, height}) do
    area(shape, width, height)
  end

  defp area(:rectangle, width, height) when width > 0 and height > 0 do
    (width * height)
  end

  defp area(:triangle, base, height) when base > 0 and height > 0 do
    (base * height)/2.0
  end

  defp area(:ellipse, major, minor) when major > 0 and minor > 0 do
    :math.pi() * major * minor
  end

  defp area(_shape, _a, _b) do
    0
  end
end
