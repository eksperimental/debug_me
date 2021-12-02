defmodule BackPort do
  defmacro __using__(_options) do
    quote do
      unless macro_exported?(Kernel, :is_hypothetical_macro, 1) do
        IO.puts "import is called"
        import BackPort, only: [is_hypothetical_macro: 1]
        IO.puts "macro exported: BackPort.is_hypothetical_macro/1: " <> inspect(macro_exported?(BackPort, :is_hypothetical_macro, 1))
      end
    end
  end

  @doc guard: true
  defmacro is_hypothetical_macro(term) do
    quote do
      unquote(term) == :hypothetical_macro
    end
  end
end
