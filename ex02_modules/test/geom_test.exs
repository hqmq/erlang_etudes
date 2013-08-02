Code.require_file "test_helper.exs", __DIR__

defmodule GeomTest do
  use ExUnit.Case, async: true

  test "the Geom.area/2" do
    assert(Geom.area(3,4) == 12)
    assert(Geom.area(12,7) == 84)
  end
end
