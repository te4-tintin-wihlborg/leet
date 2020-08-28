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

  def split(a, b) do
    [head | tail] = a 
    IO.inspect head
    IO.inspect tail
  end

end
