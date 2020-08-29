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

  def split(list, char), do: _split(list, [], char)
  defp _split([], front, _), do: [Enum.reverse(front)]
  defp _split(tail, [head | front], char) when char == head, do: [Enum.reverse(front), tail]
  defp _split([head | tail], front, char), do: _split(tail, [head | front], char)

end
