defmodule ExistsFalseTest do
  use ExUnit.Case
  doctest SimpleAssert

  test "When paramater evaluates to `false`, then `:ok`." do
    assert SimpleAssert.exists_false(false) == :ok
  end

  test "When paramater evaluates to `true`, then `ArgumentError`." do
    assert_raise ArgumentError, fn ->
      SimpleAssert.exists_false(true) == :ok
    end
  end

  test "When paramater evaluates to any strings, then `ArgumentError`." do
    assert_raise ArgumentError, fn ->
      SimpleAssert.exists_false("foo bar")
    end
  end
end
