defmodule Foo do
  use BackPort

  def sample(term) when is_hypothetical_macro(term), do: true
  def sample(term), do: false
end