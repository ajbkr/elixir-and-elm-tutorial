defmodule TemporaryTest do
  use ExUnit.Case
  doctest Temporary

  test "the add function takes two integers and adds them together" do
    result = Temporary.add(1, 1)
    assert result == 2
  end

  test "the add function takes two floats and adds them together" do
    result = Temporary.add(1.5, 1.5)
    assert result == 3.0
  end

  test "the add function returns a number" do
    result = Temporary.add(1.5, 3.5)
    result_is_a_number = is_number(result)
    assert result_is_a_number
  end

  test "the add function returns a number (alternative I)" do
    Temporary.add(1.5, 3.5)
    |> is_number
    #|> IO.inspect()
    |> assert
  end

  test "the add function returns a number (alternative II)" do
    1.5
    |> Temporary.add(3.5)
    |> is_number
    #|> IO.inspect()
    |> assert
  end

  test "the mul function takes two integers and multiplies them together" do
    result = Temporary.mul(3, 4)
    assert result == 12
  end

  test "the mul function takes two floats and multiplies them together" do
    result = Temporary.mul(1.5, 2.0)
    assert result == 3.0
  end

  test "the mul function returns a number" do
    Temporary.add(1.5, 2.0)
    |> is_number
    |> assert
  end
end
