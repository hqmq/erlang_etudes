Code.require_file "test_helper.exs", __DIR__

defmodule PowersTest do
  use ExUnit.Case, async: true

  test "Powers.nth/2" do
    assert Powers.nth(5,1) == 5
    assert Powers.nth(2,3) == 8
    assert Powers.nth(1.2,3) == 1.728
    assert Powers.nth(2,0) == 1
    assert Powers.nth(2,-3) == 0.125
  end
end
