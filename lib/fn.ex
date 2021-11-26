defmodule Fn do
  def f1(g, x) do
    # We'll mutate the function patterns
    fun = fn value when is_integer(value) ->
      g.(value)
    end

    fun.(x)
  end

  def f2(x) do
    fun = fn
      # We'll mutate the function patterns
      value when is_integer(value) -> value
    end

    fun.(x)
  end

  def f3(g, x) do
    fun = fn value -> g.(value) end

    fun.(x)
  end
end
