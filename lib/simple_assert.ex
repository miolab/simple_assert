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
end
