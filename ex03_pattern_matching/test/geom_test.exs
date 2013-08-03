Code.require_file "test_helper.exs", __DIR__

defmodule GeomTest do
  use ExUnit.Case, async: true

  test "Geom.area/2" do
    assert Geom.area(:rectangle,3,4) == 12
    assert Geom.area(:rectangle,12,7) == 84
    assert Geom.area(:triangle, 3,5) == 7.5
    ellipse = Geom.area(:ellipse, 2, 4)
    assert ellipse > 25.132 and ellipse < 25.133
    # assert_raise FunctionClauseError, fn ->
    #   Geom.area(:ellipse, -2, -4) > 25.132
    # end
    assert Geom.area(:pentagon, 1, 2) == 0
    assert Geom.area(:ellipse, -2, -4) == 0
  end
end
