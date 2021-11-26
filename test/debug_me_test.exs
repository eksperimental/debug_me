defmodule DebugMeTest do
  use ExUnit.Case
  doctest DebugMe

  test "greets the world" do
    assert DebugMe.hello() == :world
  end
end
