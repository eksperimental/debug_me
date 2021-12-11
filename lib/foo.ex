defmodule Foo do
   def eval(x, percentage) when rem(x, 100) < percentage, do: true
   def eval(_, _), do: false

  def report(list) when is_list(list) do
    for chunk <- Enum.chunk_by(list, & &1), do: {hd(chunk), length(chunk)}
  end
end
