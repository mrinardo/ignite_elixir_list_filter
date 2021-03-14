defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns the amount of odd numbers inside the list" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]

      result = ListFilter.call(list)
      expected_result = 3

      assert result == expected_result
    end
  end
end
