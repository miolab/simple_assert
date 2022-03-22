defmodule SimpleAssert do
  @moduledoc """
  Documentation for `SimpleAssert`.
  """

  @doc """
  Asserts the `e` is `true`.

  If it succeeds, it returns `:ok`. Raises an error otherwise.

  ## Examples

      iex> SimpleAssert.assert(1 == 1)
      :ok

      iex> SimpleAssert.assert(1 == 2)
      ** (ArgumentError) assertion failed!
  """
  @spec assert(boolean()) :: :ok | none()
  def assert(e) do
    if e do
      :ok
    else
      raise ArgumentError, "assertion failed!"
    end
  end

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
  def assert_false(e) do
    cond do
      e == false -> :ok
      e == nil -> :ok
      true -> raise ArgumentError, "assertion failed!"
    end
  end
end
