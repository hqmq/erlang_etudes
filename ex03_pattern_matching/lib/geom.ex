defmodule Geom do
  @moduledoc """
    Calculates the area of geometric shapes.
    """

  @doc "area(shape, width, height) -> the area of a rectange with the given width and height."
  def area(:rectangle, width, height) when width > 0 and height > 0 do
    (width * height)
  end

  def area(:triangle, base, height) when base > 0 and height > 0 do
    (base * height)/2.0
  end

  def area(:ellipse, major, minor) when major > 0 and minor > 0 do
    :math.pi() * major * minor
  end
end
