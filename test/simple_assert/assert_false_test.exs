defmodule AssertFalseTest do
  use ExUnit.Case
  doctest SimpleAssert

  test "When paramater evaluates to `false`, then `:ok`." do
    assert SimpleAssert.assert_false(false) == :ok
  end

  test "When paramater evaluates to `true`, then `ArgumentError`." do
    assert_raise ArgumentError, fn ->
      SimpleAssert.assert_false(true) == :ok
    end
  end

  test "When paramater evaluates to any strings, then `ArgumentError`." do
    assert_raise ArgumentError, fn ->
      SimpleAssert.assert_false("foo bar")
    end
  end
end
