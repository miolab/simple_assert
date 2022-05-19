defmodule AssertTrueTest do
  use ExUnit.Case
  doctest SimpleAssert

  test "When paramater evaluates to `true`, then `:ok`." do
    assert SimpleAssert.assert_true(true) == :ok
  end

  test "When paramater evaluates to `false`, then `ArgumentError`." do
    assert_raise ArgumentError, fn ->
      SimpleAssert.assert_true(false)
    end
  end

  test "When paramater evaluates to `nil`, then `ArgumentError`." do
    assert_raise ArgumentError, fn ->
      SimpleAssert.assert_true(nil)
    end
  end
end
