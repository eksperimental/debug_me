defmodule BackPortTest do
  use ExUnit.Case
  doctest BackPort

  test "with use: hypothetical_macro/1" do
    assert Foo.sample(:foo) == :false
    assert Foo.sample(:hypothetical_macro) == true
  end

  test "with import: hypothetical_macro/1" do
    assert FooWithImport.sample(:foo) == :false
    assert FooWithImport.sample(:hypothetical_macro) == true
  end
end
