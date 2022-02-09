defmodule SimpleAssertTest do
  use ExUnit.Case
  doctest SimpleAssert

  test "When paramater evaluates to `true`, then `:ok`." do
    assert SimpleAssert.assert(true) == :ok
  end

  test "When paramater evaluates to `false`, then `ArgumentError`." do
    assert_raise ArgumentError, fn ->
      SimpleAssert.assert(false)
    end
  end
end
