defmodule Geom do
  @moduledoc """
    Calculates the area of geometric shapes.
    """

  @doc "area(shape, width, height) -> the area of a rectange with the given width and height."
  def area(:rectangle, width, height) do
    (width * height)
  end

  def area(:triangle, base, height) do
    (base * height)/2.0
  end

  def area(:ellipse, major, minor) do
    :math.pi() * major * minor
  end
end
