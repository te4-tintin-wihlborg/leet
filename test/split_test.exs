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
    assert Split.split([1, 2, 3, 4, 5], 3) == [[1, 2], [4, 5]]
  end

  test "splits charlist" do
    assert Split.split('Hello World', ?\s) == ['Hello', 'World']
  end

  test "doesn't crash when no occurences of delimitter" do
    assert Split.split([1, 2, 3], 4) == [[1, 2, 3]]
  end

  test "splits charlist with multiple delimitters" do
    assert Split.split([1, 2, 3, 4, 5, 6, 4, 7, 8], 4) == [[1, 2, 3], [5, 6], [7, 8]]
  end
end
