defmodule FooTest do
  use ExUnit.Case

  import Foo, only: [report: 1]

  doctest Foo

  test "eval/0" do
    assert Foo.eval(nil, 20) == false
  end

  test "Runtime" do
    times = 10_000_000

    result = Enum.map(1..times, fn _i -> Foo.eval(nil, 20) end)
    assert report(result) == [false: times]
  end

  test "Compile time" do
    times = 10_000_000

    assert report(Bar.result()) == [false: times]
  end
end
