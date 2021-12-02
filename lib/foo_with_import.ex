defmodule FooWithImport do
  #use BackPort
  import BackPort, only: [is_hypothetical_macro: 1]

  def sample(term) when is_hypothetical_macro(term), do: true
  def sample(_term), do: false
end