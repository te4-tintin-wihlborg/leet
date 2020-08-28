defmodule Split do
  @moduledoc """
  Documentation for `Split`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Split.hello()
      :world

  """
  def hello do
    :world
  end

  def split(list, count), do: _split(list, [], count)
  defp _split(tail, front, 0), do: [Enum.reverse(front), tail]
  defp _split([head | tail], front, count) do
    _split(tail, [head | front], count - 1)
  end

end
