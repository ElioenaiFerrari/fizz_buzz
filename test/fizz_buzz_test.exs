defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, return converted list" do
      expected =
        {:ok, [1, 2, :fizz, 4, :buzz, :fizz, 7, 8, :fizz, :buzz, 11, :fizz, 13, 14, :fizz_buzz]}

      assert FizzBuzz.build("numbers.txt") == expected
    end

    test "when a invalid file is provided, return reason" do
      expected = {:error, "File not found"}

      assert FizzBuzz.build("invalid.txt") == expected
    end
  end
end
