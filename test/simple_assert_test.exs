defmodule SimpleAssertTest do
  use ExUnit.Case
  doctest SimpleAssert

  test "greets the world" do
    assert SimpleAssert.hello() == :world
  end
end
