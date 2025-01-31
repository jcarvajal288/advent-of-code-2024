defmodule Day1Test do
  use ExUnit.Case
  doctest Day1

  test "day 1 sample input" do
    example_data = File.read!("lib/data/day1_example.txt")
    assert Day1.reconcile_lists(example_data) == 11
  end
end
