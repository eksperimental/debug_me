defmodule FnTest do
  use ExUnit.Case
  doctest Fn

  # https://elixirforum.com/t/weird-errors-in-non-matching-clause-in-anonymous-function/44110

  # test "f1" do
  #   assert Fn.f1(& &1, :foo) == :foo
  # end

  test "f1 exception" do
    assert_raise CaseClauseError, fn ->
      Fn.f1(& &1, :foo)
    end
  end

  # test "f2" do
  #   assert Fn.f2(:foo) == :foo
  # end

  test "f2 exception" do
    assert_raise FunctionClauseError, fn ->
      Fn.f2(:foo)
    end
  end

  test "f3" do
    Fn.f3(& &1, :foo)
  end

end
