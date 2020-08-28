defmodule SplitTest do
  use ExUnit.Case
  doctest Split

  test "greets the world" do
    assert Split.hello() == :world
  end

  #test "splits the string with space delimitter" do
  #  assert Split.split('Hello World', ' ') == ["Hello", "World"]
  #end

  test "splits number" do
    assert Split.split([1, 5, 5, 4, 5, 6], 2) == 0
  end
end
