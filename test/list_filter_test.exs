defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  test "can handle string elements" do
    assert ListFilter.call(["1", "3", "5"]) == 3
  end

  test "can handle integer elements" do
    assert ListFilter.call([1, 3, 5]) == 3
  end
end
