defmodule SimpleAssert do
  @moduledoc """
  SimpleAssert asserts the given parameter is `true` or `false`.
  """

  @doc """
  Asserts the `e` is `true`.

  If it succeeds, it returns `:ok`. Raises an error otherwise.

  ## Examples

      iex> SimpleAssert.assert_true(1 == 1)
      :ok

      iex> SimpleAssert.assert_true(1 == 2)
      ** (ArgumentError) assertion failed!
  """
  @spec assert_true(boolean()) :: :ok | none()
  def assert_true(e)

  def assert_true(true), do: :ok

  def assert_true(_), do: raise(ArgumentError, "assertion failed!")

  @doc """
  Asserts the `e` is `false` or `nil`.

  If it succeeds, it returns `:ok`. Raises an error otherwise.

  ## Examples

      iex> SimpleAssert.assert_false(false)
      :ok

      iex> SimpleAssert.assert_false(nil)
      :ok

      iex> SimpleAssert.assert_false(:unexpected_result)
      ** (ArgumentError) assertion failed!
  """
  @spec assert_false(any()) :: :ok | none()
  def assert_false(e)

  def assert_false(false), do: :ok

  def assert_false(nil), do: :ok

  def assert_false(_), do: raise(ArgumentError, "assertion failed!")
end
