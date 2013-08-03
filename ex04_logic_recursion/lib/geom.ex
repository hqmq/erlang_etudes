defmodule Geom do
  @moduledoc """
    Calculates the area of geometric shapes.
    """

  @doc "area({shape, width, height}) -> the area of a shape with the given width and height.
  supported shapes = rectangle, triangle, ellipse"
  def area({shape, width, height}) do
    area(shape, width, height)
  end

  defp area(shape, width, height) when width > 0 and height > 0 do
    case shape do
      :rectangle -> (width * height)
      :triangle -> (width * height) / 2.0
      :ellipse -> :math.pi * width * height
      _ -> 0
    end
  end

  defp area(_shape, _width, _height) do
    0
  end
end
