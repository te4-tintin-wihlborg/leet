defmodule SplitTest do
  use ExUnit.Case
  doctest Split

  test "greets the world" do
    assert Split.hello() == :world
  end

  test "splits the string with space delimitter" do
    assert Split.split("Hello World", " ") == ["Hello", "World"]
  end
end
