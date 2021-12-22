defmodule DebugMe do
  @moduledoc """
  Documentation for `DebugMe`.
  """

  @type t(arg) :: [arg] when arg: atom()

  @doc """
  Hello world.

  ## Examples

      iex> DebugMe.hello()
      :world

  """
  def hello do
    :world
  end
end
