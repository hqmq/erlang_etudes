Code.require_file "test_helper.exs", __DIR__

defmodule DijkstraTest do
  use ExUnit.Case, async: true

  test "Dijkstra.gcd/2" do
    assert Dijkstra.gcd(12,8) == 4
    assert Dijkstra.gcd(14,21) == 7
    assert Dijkstra.gcd(125,46) == 1
    assert Dijkstra.gcd(120,36) == 12
  end
end
