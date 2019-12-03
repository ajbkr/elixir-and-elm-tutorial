defmodule Temporary do
  @moduledoc """
  Documentation for Temporary.
  """

  @doc """
  Add two numbers together.

  ## Examples

      iex> Temporary.add(0, 0)
      0

      iex> Temporary.add(0, 1)
      1

      iex> Temporary.add(1, 0)
      1

      iex> Temporary.add(1, 1)
      2

  """
  def add(0, 0), do: 0
  def add(0, y) when is_number(y), do: y
  def add(x, 0) when is_number(x), do: x
  def add(x, y) when is_number(x) and is_number(y) do
    x + y
  end

  @doc """
  Multiply two numbers together.

  ## Examples

      iex> Temporary.mul(3, 4)
      12

  """
  def mul(x, y), do: x * y
end
