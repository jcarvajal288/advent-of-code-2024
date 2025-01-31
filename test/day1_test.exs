defmodule Day1Test do
  use ExUnit.Case
  doctest Day1

  test "day 1 sample input" do
    data = File.read!("lib/data/day1_example.txt")
    assert Day1.reconcile_lists(data) == 11
  end

  test "day 1 full input" do
    data = File.read!("lib/data/day1_full.txt")
    assert Day1.reconcile_lists(data) == 2_769_675
  end
end
